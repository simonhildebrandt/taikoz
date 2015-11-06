class Location < ActiveRecord::Base
  # belongs_to :session, foreign_key: :location_id
  has_many :sessions

  def full_address
    "#{venue}, #{street_add} #{city}"
  end
end
