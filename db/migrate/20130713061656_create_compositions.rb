class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.integer :mint_coin_id
      t.integer :precious_metal_id
      t.float :percentage

      t.timestamps
    end
  end
end
