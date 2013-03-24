class CreateMints < ActiveRecord::Migration
  def change
    create_table :mints do |t|
      t.string :name
      t.string :symbol
      t.boolean :always_present
      t.text :comments

      t.timestamps
    end
  end
end
