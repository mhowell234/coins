class CreateValuations < ActiveRecord::Migration
  def change
    create_table :valuations do |t|
      t.integer :mint_coin_id
      t.integer :rating_agency_id
      t.integer :year
      t.integer :sheldon_rating_scale_id
      t.float :value

      t.timestamps
    end
  end
end
