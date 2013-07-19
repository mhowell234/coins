class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  
  def group_mint_coins(mint_coins)
    grouping_hash = Hash.new
    grouping_order = Array.new
    
    mint_coins.each do |mint_coin|
      grouping_name = mint_coin.year_grouping
      if grouping_name.nil? or grouping_name.empty? then
        grouping_name = 'Coins'
      end
      
      if not grouping_hash.has_key?(grouping_name) then
        grouping_hash[grouping_name] = Array.new
        grouping_order << grouping_name
      end
      
      grouping_hash[grouping_name] << mint_coin
    end
    
    return {:order => grouping_order, :groupings => grouping_hash}
    
  end


end
