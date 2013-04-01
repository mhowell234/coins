class CreateSheldonRatingScales < ActiveRecord::Migration
  def change
    create_table :sheldon_rating_scales do |t|
      t.string :title
      t.integer :sheldon_rating_category_id
      t.float :value
      t.text :description

      t.timestamps
    end
  end
end
