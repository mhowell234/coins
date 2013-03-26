class CreateCoinAttributeTypes < ActiveRecord::Migration
  def change
    create_table :coin_attribute_types do |t|
      t.text :value

      t.timestamps
    end
  end
end
