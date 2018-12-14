require "rails_helper"

RSpec.describe "Visits home page" do
  it "shows site name and blurb" do
    visit root_path

    expect(page).to have_text "Tiniich"
    expect(page).to have_text "Derrick"
  end
end
