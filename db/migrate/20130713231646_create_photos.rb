class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :coin_id
      t.string :file_name
      t.string :catpion

      t.timestamps
    end
  end
end
