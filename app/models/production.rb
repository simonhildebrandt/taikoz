class Production < ActiveRecord::Base
  has_many :images, dependent: :destroy

  validates :name, presence: :true
  validates :catagory, presence: { message: "is required" }

  extend FriendlyId
  friendly_id :name, use: :slugged

  enum catagory: [:mainstage, :corporate, :school_show, :school_workshop]

  scope :all_schools, -> { where(catagory:[2, 3]).order(name: :asc) }


end
