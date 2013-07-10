class CreateMintCoins < ActiveRecord::Migration
  def change
    create_table :mint_coins do |t|
      t.integer :coin_id
      t.integer :year
      t.text :year_grouping
      t.integer :mint_id
      t.text :mint_grouping
      t.integer :number_minted
      t.integer :number_proof_minted
      t.boolean :is_gold
      t.boolean :is_silver

      t.timestamps
    end
  end
end
