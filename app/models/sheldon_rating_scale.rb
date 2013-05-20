class SheldonRatingScale < ActiveRecord::Base
  attr_accessible :description, :sheldon_rating_category_id, :title, :value

  belongs_to :sheldon_rating_category

  validates :sheldon_rating_category_id, :presence=> true

end
