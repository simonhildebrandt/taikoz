class Post < ActiveRecord::Base
  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader
  mount_uploader :image_4, ImageUploader
  mount_uploader :image_5, ImageUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  # default_scope -> { order(created_at: :asc)}

end
