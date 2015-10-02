class Session < ActiveRecord::Base
  belongs_to :event
  # has_one :location
  # accepts_nested_attrtibutes_for :locations, reject_if: :all_blank, allow_destroy: true
end
