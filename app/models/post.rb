class Post < ActiveRecord::Base
  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader
  mount_uploader :image_4, ImageUploader
  mount_uploader :image_5, ImageUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  # default_scope -> { order(created_at: :asc)}

  scope :draft,      -> { where(post_status: "Draft") }
  scope :published,  -> { where(post_status: "Published") }

  state_machine :post_status, initial: :Draft do
    event :publish do
      transition Draft: :Published
    end
  end


end
