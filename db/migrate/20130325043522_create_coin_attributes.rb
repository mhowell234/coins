class CreateCoinAttributes < ActiveRecord::Migration
  def change
    create_table :coin_attributes do |t|
      t.integer :coin_id
      t.integer :coin_attribute_type_id
      t.text :coin_attribute_value

      t.timestamps
    end
  end
end
