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
  attr_accessible :coin_value_id, :description, :end_year, :name, :start_year, :photo

  belongs_to :coin_value
  has_many :coin_attributes
  has_many :year_coins
  has_many :mint_coins
  
  validates :name, :presence=> true
  validates :start_year, :presence=> true
  validates :coin_value_id, :presence=> true

  # Save photo to filesystem when saving
  after_save :store_photo

  # File.join is a cross-platform way of joining directories;
  PHOTO_STORE = File.join Rails.root, 'public', 'photo_store'


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


  # where to write the image file to
  def photo_filename
    File.join PHOTO_STORE, "#{id}.#{extension}"
  end
  
  
  # return a path we can use in HTML for the image
  def photo_path
    "/photo_store/#{id}.#{extension}"
  end


  # when photo data is assigned via the upload, store the file data
  # for later and assign the file extension, e.g., ".jpg"
  def photo=(file_data)
    unless file_data.blank?
      # store the uploaded data into a private instance variable
      @file_data = file_data
      # figure out the last part of the filename and use this as
      # the file extension. e.g., from "me.jpg" will return "jpg"
      self.extension = file_data.original_filename.split(".").last.downcase
    end
  end
  
  
  # if a photo exists
  def has_photo?
    File.exists? photo_filename
  end
  
  
  private
  
  # Called after saving, to write the uploaded image to the filesystem
  def store_photo
    if @file_data
      # make the photo_store directory if it doesn't exist already
      FileUtils.mkdir_p PHOTO_STORE
      # write out the image data to the file
      File.open(photo_filename, 'wb') do |f|
        f.write(@file_data.read)
      end
      # ensure file saved only when it newly arrives at model being saved
      @file_data = nil
    end
  end
  
end
