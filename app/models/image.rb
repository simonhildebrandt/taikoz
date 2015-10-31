class Image < ActiveRecord::Base
  belongs_to :production
  belongs_to :post

  mount_uploader :image, ImageUploader

end
