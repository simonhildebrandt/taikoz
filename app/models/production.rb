class Production < ActiveRecord::Base
  has_many :images, dependent: :destroy

  validates :name, presence: :true
  validates :catagory, presence: { message: "is required" }

  extend FriendlyId
  friendly_id :name, use: :slugged

  enum catagory: [:Mainstage, :Corporate, :School_Show]

end
