class Image < ActiveRecord::Base
  belongs_to :production

  mount_uploader :image, ImageUploader

end
