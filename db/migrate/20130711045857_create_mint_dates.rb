class CreateMintDates < ActiveRecord::Migration
  def change
    create_table :mint_dates do |t|
      t.integer :mint_id
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
