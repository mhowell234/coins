class AddDescriptionToOrigins < ActiveRecord::Migration
  def change
    add_column :origins, :description, :string
  end
end
