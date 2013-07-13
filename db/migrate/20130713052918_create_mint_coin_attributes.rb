class CreateMintCoinAttributes < ActiveRecord::Migration
  def change
    create_table :mint_coin_attributes do |t|
      t.integer :attribute_type_id
      t.string :value
      t.integer :mint_coin_id

      t.timestamps
    end
  end
end
