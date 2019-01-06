require "rails_helper"

RSpec.describe Frame do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:questions) }
end
