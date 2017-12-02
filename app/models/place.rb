class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :images
    geocoded_by :address
    after_validation :geocode
    validates :name, length: { minimum: 3 }, presence: true
    validates :address, presence: true
    validates :description, presence: true
    
    mount_uploader :image, ImageUploader
end
