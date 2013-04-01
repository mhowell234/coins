class AddPhotoExtensionToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :extension, :string
  end
end
