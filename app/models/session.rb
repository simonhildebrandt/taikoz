class Session < ActiveRecord::Base
  belongs_to :event

  validates :start_date, :end_date, :venue, presence: :true

  default_scope -> { order(start_date: :asc) }

  before_validation :copy_start_to_end
  after_save :copy_dates_to_event

  def copy_dates_to_event
    if start_date_changed? || end_date_changed?
      event.update_cached_dates
    end
  end

  def copy_start_to_end
    self.end_date = start_date if end_date.blank?
  end

end
