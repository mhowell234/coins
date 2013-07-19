class SheldonRatingScale < ActiveRecord::Base
  attr_accessible :description, :sheldon_rating_category_id, :title, :value

  belongs_to :sheldon_rating_category
  has_many :valuations

  validates :sheldon_rating_category_id, :presence=> true

  default_scope joins(:sheldon_rating_category).order('special_order ASC, value ASC')
  
end
