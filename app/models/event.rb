class Event < ActiveRecord::Base

  has_many :sessions, dependent: :destroy
  accepts_nested_attributes_for :sessions, reject_if: :all_blank, allow_destroy: true


  # validates_presence_of :sessions
  validates :name, presence: :true

  mount_uploader :image, ImageUploader

  # default_scope -> { order(start_date: :asc)}
  # scope :current_events, -> { where(state: "current") }
  # scope :past_events,    -> { where(state: "past") }
  scope :current_events, -> { where(["end_date >= ?", Time.current.beginning_of_day]) }
  scope :past_events,    -> { where(["end_date < ?", Time.current.beginning_of_day]) }

  scope :draft,      -> { where(event_status: "Draft") }
  scope :published,  -> { where(event_status: "Published") }


  extend FriendlyId
  friendly_id :name, use: :slugged

  def update_cached_dates
    # start_dates = sessions.collect { |session| session.start_date }
    # self.start_date = start_dates.min
    self.start_date = sessions.collect(&:start_date).min
    self.end_date = sessions.collect(&:end_date).max
    save!
  end


  # state_machine :state, initial: :current do
  #   event :make_past do
  #     transition current: :past
  #   end
  # end

  state_machine :event_status, initial: :Draft do
    event :publish do
      transition Draft: :Published
    end
  end

  def current?
    end_date >= Time.current.beginning_of_day
  end

  def past?
    end_date < Time.current.beginning_of_day
  end


  # def self.change_event_state
  #   events = current_events
  #   events.where(["end_date < ?", Time.current]).each do |event|
  #     event.make_past
  #   end
  # end

end
