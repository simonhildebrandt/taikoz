require 'rails_helper'

RSpec.describe Production, type: :model do
  it { is_expected.to have_attribute :name }
end
