class Event < ActiveRecord::Base
  has_many :sessions, dependent: :destroy
  accepts_nested_attributes_for :sessions, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :sessions
  validates :name, presence: :true

  mount_uploader :image, ImageUploader
end
