class CreateOurCoins < ActiveRecord::Migration
  def change
    create_table :our_coins do |t|
      t.integer :mint_coin_id
      t.float :price_paid
      t.integer :origin_id
      t.date :origin_date
      t.boolean :is_silver
      t.boolean :is_gold
      t.boolean :is_proof

      t.timestamps
    end
  end
end
