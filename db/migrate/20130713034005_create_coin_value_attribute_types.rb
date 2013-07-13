class CreateCoinValueAttributeTypes < ActiveRecord::Migration
  def change
    create_table :coin_value_attribute_types do |t|
      t.string :value

      t.timestamps
    end
  end
end
