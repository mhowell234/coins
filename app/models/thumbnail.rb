class Thumbnail < ActiveRecord::Base
  attr_accessible :caption, :coin_id, :file_name
  
  belongs_to :coin

  THUMBNAIL_PATH = '/coin_thumbnails'
  
  
  def img_path
    "#{THUMBNAIL_PATH}/#{file_name}"
  end
  
end
