class CreateSheldonRatingCategories < ActiveRecord::Migration
  def change
    create_table :sheldon_rating_categories do |t|
      t.string :title
      t.text :description
      t.integer :start
      t.integer :end
      t.integer :special_order

      t.timestamps
    end
  end
end
