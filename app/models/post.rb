class Post < ApplicationRecord
 mount_uploader :image, ImageUploader
 mount_uploader :image2, ImageUploader
 mount_uploader :image3, ImageUploader
 mount_uploader :image4, ImageUploader
 belongs_to :user
 has_many :likes, dependent: :destroy
 has_many :liked_users, through: :likes, source: :user
end
