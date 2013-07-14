class Photo < ActiveRecord::Base
  attr_accessible :caption, :coin_id, :file_name
  
  belongs_to :coin

  PHOTO_PATH = '/coin_photos'
  
  
  def img_path
    "#{PHOTO_PATH}/#{file_name}"
  end
  
end
