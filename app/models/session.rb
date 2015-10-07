class Session < ActiveRecord::Base
  belongs_to :event

  validates :start_date, :venue, presence: :true

  default_scope -> { order(start_date: :asc) }

end
