class MintCoin < ActiveRecord::Base
  attr_accessible :coin_id, :is_gold, :is_silver, :mint_grouping, :mint_id, :number_minted, :number_proof_minted, :year, :year_grouping

  belongs_to :coin
  belongs_to :mint

  has_many :mint_coin_attributes
  has_many :compositions
  has_many :valuations
  has_many :our_coins
  
  default_scope joins(:mint).order('year ASC, year_grouping ASC, always_present ASC, mints.name ASC, mint_grouping ASC')
  
  
  # Displays a readable year/mint name for this coin
  def title
    title = "#{year}"
    
    mint = Mint.find(mint_id)
    if not mint.nil? and not mint.symbol.nil? and not mint.symbol.empty? then
      title << "-" << mint.symbol
    end
    
    if not year_grouping.nil? and not year_grouping.empty? then
      title << ", #{year_grouping}"
    end
      
    if not mint_grouping.nil? and not mint_grouping.empty? then
      title << ", #{mint_grouping}"
    end
    
    return title
  end
  

  def full_title
    coin = Coin.find(coin_id)
    coin_value = CoinValue.find(coin.coin_value_id)
    
    return "#{coin_value.name} - #{coin.name} - #{title}"    
  end
  

  def full_name
    coin = Coin.find(coin_id)
    coin_value = CoinValue.find(coin.coin_value_id)
    
    return "#{coin.name} #{coin_value.name} - #{title}"    
  end

  
  def get_melt_values
  
    has_weight = false
    weight = 0
    mint_coin_attributes.each do |attrib|
      if attrib.attribute_type_id == 2 and not attrib.value.nil?
        has_weight = true
        weight = attrib.value
        break
      end
    end
  
    return nil if not has_weight

    has_compositions = false
    
    data = Array.new
    total_value = 0.0
    compositions.each do |composition|
      has_compositions = true

      metal = PreciousMetal.find(composition.precious_metal_id)

      comp = Hash.new
      comp['name'] = metal.name
      comp['percentage'] = composition.percentage
      
      comp['value'] = metal.price_per_gram.to_f * weight.to_f
      total_value = total_value + comp['value']
      
      comp['price_per_unit'] = metal.price_per_unit
      comp['unit'] = metal.unit
     
      data << comp
    end
    
    # Add total data
    if data.length > 0
      totals = Hash.new
      totals['name'] = 'Total'
      totals['value'] = total_value
      data << totals
    end
    
    return nil if not has_compositions
    
    return data
    
  end
  
  
  def get_valuations_grouped_by_year
    
    # Group by year, agency, rating...
    # Can sort year grouping
    # Can sort agency grouping for now
    # Need order for rating....
    
    valuation_data = Hash.new
    scales_per_year = Hash.new
    
    valuations.each do |valuation|
      year = valuation.year
      agency = valuation.rating_agency.name
      scale = valuation.sheldon_rating_scale.title
      value = valuation.value
          
      if not valuation_data.has_key?(year)
        valuation_data[year] = Hash.new
      end
      
      if not valuation_data[year].has_key?(agency)
        valuation_data[year][agency] = Hash.new
      end
       
      valuation_data[year][agency][scale] = value
        
      if not scales_per_year.has_key?(year)
        scales_per_year[year] = Array.new
      end
      
      if not scales_per_year[year].include?(scale)
        scales_per_year[year] << scale
      end
    end
    
    if valuation_data.length > 0 and scales_per_year.length > 0 then
      return {:data => valuation_data, :scales_per_year => scales_per_year}
    else
      return nil
    end
    
  end
  
  
  
  def get_valuations_grouped_by_agency
    
    # Group by agency, year, rating...
    
    valuation_data = Hash.new
    scales_per_agency = Hash.new
    
    valuations.each do |valuation|
      year = valuation.year
      agency = valuation.rating_agency.name
      scale = valuation.sheldon_rating_scale.title
      value = valuation.value
      
      if not valuation_data.has_key?(agency)
        valuation_data[agency] = Hash.new
      end
      
      if not valuation_data[agency].has_key?(year)
        valuation_data[agency][year] = Hash.new
      end
       
      valuation_data[agency][year][scale] = value
        
      if not scales_per_agency.has_key?(agency)
        scales_per_agency[agency] = Array.new
      end
      
      if not scales_per_agency[agency].include?(scale)
        scales_per_agency[agency] << scale
      end
    end
    
    if valuation_data.length > 0 and scales_per_agency.length > 0 then
      return {:data => valuation_data, :scales_per_agency => scales_per_agency}
    else
      return nil
    end
  end  
  
end
