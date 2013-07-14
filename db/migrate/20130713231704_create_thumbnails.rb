class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.integer :coin_id
      t.string :file_name
      t.string :caption

      t.timestamps
    end
  end
end
