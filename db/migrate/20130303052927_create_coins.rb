class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :name
      t.integer :start_year
      t.integer :end_year
      t.text :description
      t.integer :coin_value_id

      t.timestamps
    end
  end
end
