class CreateOurCoinThumbnails < ActiveRecord::Migration
  def change
    create_table :our_coin_thumbnails do |t|
      t.integer :our_coin_id
      t.string :file_name
      t.string :caption

      t.timestamps
    end
  end
end
