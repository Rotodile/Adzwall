class Ad < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user, optional: true
    acts_as_taggable

    validates :title, :brand, :price, presence: true
    validates :description, length: { maximum: 1000, too_long: "%{count} charactars is the maximum allowed"}
    validates :title, length: { maximum: 140, too_long: "%{count} charactars is the maximum allowed"}
    validates :price, length: { maximum: 7 }

    CONDITION = %w{ New Excellent Mint Used Fair Poor }
    TAG_LIST = %w{ Vehicles Clothes Kids Animals Electronics Furniture Beauty }
end
