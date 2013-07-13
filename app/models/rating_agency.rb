class RatingAgency < ActiveRecord::Base
  attr_accessible :full_name, :name
  
  has_many :valuations

end
