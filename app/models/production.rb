class Production < ActiveRecord::Base
  has_many :images, dependent: :destroy

  validates :name, presence: :true

  extend FriendlyId
  friendly_id :name, use: :slugged
end
