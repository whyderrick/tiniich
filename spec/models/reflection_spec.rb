require "rails_helper"

RSpec.describe Reflection do
  it { is_expected.to belong_to(:user) }
end
