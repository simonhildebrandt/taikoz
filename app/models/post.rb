class Post < ActiveRecord::Base
  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader
  mount_uploader :image_4, ImageUploader
  mount_uploader :image_5, ImageUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  before_save :update_published_at

  # default_scope -> { order(created_at: :asc)}

  scope :draft,      -> { where(post_status: "Draft") }
  scope :published,  -> { where(post_status: "Published") }

  state_machine :post_status, initial: :Draft do
    event :publish do
      transition Draft: :Published
    end
  end

  def update_published_at
    if post_status_changed?
      if post_status == "Published"
        self.published_at = Time.current
      elsif post_status == "Draft"
        self.published_at = nil
      end
    end
  end


end
