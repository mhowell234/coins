class OurCoin < ActiveRecord::Base
  attr_accessible :is_gold, :is_proof, :is_silver, :mint_coin_id, :origin_date, :origin_id, :price_paid

  belongs_to :mint_coin
  belongs_to :origin
  
  has_many :our_coin_thumbnails

  # Save photo to filesystem when saving
  #after_save :store_photo

  # File.join is a cross-platform way of joining directories;
  #PHOTO_STORE = File.join Rails.root, 'public', 'photo_store'

  PHOTO_DIR = File.join Rails.root, 'public', 'coin_photos'
  THUMBNAIL_DIR = File.join Rails.root, 'public', 'coin_thumbnails'

  
  def coin
    mint_coin = MintCoin.find(mint_coin_id)
    return mint_coin.coin
  end

  def coin_value
    return coin.coin_value
  end
  
  def year
    return mint_coin.year
  end
  
  def title
    return mint_coin.full_name
  end

  # if thumbnail exists
  def has_thumbnails?
    if our_coin_thumbnails.size > 0 
      return true
    end
    
    return false
  end

  def get_thumbnails
    photos = Array.new
    
    for thumbnail in our_coin_thumbnails do
      photos.push(thumbnail.get_hash)
    end
    
    return photos
  end
  
  def main_thumbnail
    get_thumbnails.first
  end
  
end
