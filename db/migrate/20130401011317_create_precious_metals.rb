class CreatePreciousMetals < ActiveRecord::Migration
  def change
    create_table :precious_metals do |t|
      t.string :name
      t.string :symbol
      t.string :unit
      t.float :conversion_factor
      t.float :price_per_unit
      t.float :price_per_gram

      t.timestamps
    end
  end
end
