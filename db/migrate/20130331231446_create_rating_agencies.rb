class CreateRatingAgencies < ActiveRecord::Migration
  def change
    create_table :rating_agencies do |t|
      t.string :name
      t.string :full_name

      t.timestamps
    end
  end
end
