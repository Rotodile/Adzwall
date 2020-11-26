class AddImageToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :image, :string
  end
end
