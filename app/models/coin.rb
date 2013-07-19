# == Schema Information
#
# Table name: coins
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  start_year   :integer
#  end_year     :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  coin_value_id :integer
#

class Coin < ActiveRecord::Base
  attr_accessible :coin_value_id, :description, :end_year, :name, :start_year #, :photo

  belongs_to :coin_value
  
  has_many :coin_attributes
  has_many :mint_coins
  has_many :photos
  has_many :thumbnails
  
  validates :name, :presence=> true
  validates :start_year, :presence=> true
  validates :coin_value_id, :presence=> true

  # Save photo to filesystem when saving
  #after_save :store_photo

  # File.join is a cross-platform way of joining directories;
  #PHOTO_STORE = File.join Rails.root, 'public', 'photo_store'

  PHOTO_DIR = File.join Rails.root, 'public', 'coin_photos'
  THUMBNAIL_DIR = File.join Rails.root, 'public', 'coin_thumbnails'

  # Displays the years this coin was minted
  def years
    
    if end_year == 0
      require 'date'
      end_year_str = Date.today.strftime("%Y")
    else
      end_year_str = end_year
    end
      
    return "#{start_year} - #{end_year_str}"
  end


  # if photos exists
  def has_photos?
    if photos.nil? then
      return false
    end
    
    if photos.size > 0 
      return true
    end
    
    return false
  end

  # if thumbnail exists
  def has_thumbnails?
    if thumbnails.size > 0 
      return true
    end
    
    return false
  end

  def get_thumbnails
    photos = Array.new
    
    for thumbnail in thumbnails do
      photos.push(thumbnail.get_hash)
    end
    
    return photos
  end
  
  def main_thumbnail
    get_thumbnails.first
  end
  
end
