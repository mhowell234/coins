class SheldonRatingCategory < ActiveRecord::Base
  attr_accessible :description, :end, :special_order, :start, :title

  has_many :sheldon_rating_scales

end
