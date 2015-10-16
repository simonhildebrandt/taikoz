class Event < ActiveRecord::Base

  has_many :sessions, dependent: :destroy
  accepts_nested_attributes_for :sessions, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :sessions
  validates :name, presence: :true

  mount_uploader :image, ImageUploader

  # default_scope -> { order(start_date: :asc)}

  extend FriendlyId
  friendly_id :name, use: :slugged

  def update_cached_dates
    # start_dates = sessions.collect { |session| session.start_date }
    # self.start_date = start_dates.min
    self.start_date = sessions.collect(&:start_date).min
    self.end_date = sessions.collect(&:end_date).max
    save!
  end
end
