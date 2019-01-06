require "rails_helper"

RSpec.describe Question do
  describe "associations" do
    it { is_expected.to belong_to(:reflection) }
  end
end
