class Thumbnail < ActiveRecord::Base
  attr_accessible :caption, :coin_id, :file_name
  
  belongs_to :coin

  PHOTO_PATH = '/coin_photos'
  THUMBNAIL_PATH = '/coin_thumbnails'
  
  
  def img_path
    "#{THUMBNAIL_PATH}/#{file_name}"
  end

  def parent_path
    "#{PHOTO_PATH}/#{file_name}"
  end

  def get_hash
    data = Hash.new

    data[:path] = img_path
    data[:parent_path] = parent_path
    data[:caption] = caption
      
    return data
  end
      
end
