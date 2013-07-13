class CreateCoinValueAttributes < ActiveRecord::Migration
  def change
    create_table :coin_value_attributes do |t|
      t.integer :coin_value_attribute_type_id
      t.string :value
      t.integer :coin_value_id

      t.timestamps
    end
  end
end
