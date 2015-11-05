class Location < ActiveRecord::Base
  belongs_to :session

  def full_address
    "#{venue}, #{street_add} #{city}"
  end
end
