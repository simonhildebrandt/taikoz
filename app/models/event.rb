class Event < ActiveRecord::Base
  has_many :sessions, dependent: :destroy
  accepts_nested_attributes_for :sessions, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: :true
end
