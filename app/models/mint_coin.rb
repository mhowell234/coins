class MintCoin < ActiveRecord::Base
  attr_accessible :coin_id, :is_gold, :is_silver, :mint_grouping, :mint_id, :number_minted, :number_proof_minted, :year, :year_grouping

  belongs_to :coin
  belongs_to :mint

  has_many :mint_coin_attributes
  has_many :compositions
  has_many :valuations
  
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
end
