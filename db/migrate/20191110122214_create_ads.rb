class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :brand
      t.string :condition
      t.string :title
      t.text :description
      t.decimal :price, precision: 18, scale: 3, default: 0

      t.timestamps
    end
  end
end
