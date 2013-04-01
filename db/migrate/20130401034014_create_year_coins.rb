class CreateYearCoins < ActiveRecord::Migration
  def change
    create_table :year_coins do |t|
      t.integer :coin_id
      t.integer :year
      t.text :additional_info
      t.integer :is_gold
      t.integer :is_silver

      t.timestamps
    end
  end
end
