class CreateCoinValues < ActiveRecord::Migration
  def change
    create_table :coin_values do |t|
      t.string :name
      t.float :value
      t.text :description

      t.timestamps
    end
  end
end
