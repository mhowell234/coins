class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :name
      t.integer :startYear
      t.integer :endYear
      t.text :description

      t.timestamps
    end
  end
end
