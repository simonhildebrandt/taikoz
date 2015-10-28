require "rails_helper"

RSpec.describe Post do
  it{ is_expected.to have_attribute :title}

  it{ is_expected.to have_attribute :post_status}

end
