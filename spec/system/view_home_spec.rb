require "rails_helper"

RSpec.describe "Visits home page" do
  it "shows site name and link to reflection page" do
    visit root_path

    expect(page).to have_text "Tiniich"
    expect(page).to have_link "Derrick"
  end

  context "and clicks the derrick button" do
    it "shows the form with questions" do
      question = build(:question)
      reflection = create(:reflection, questions: [question])

      visit root_path

      click_on I18n.t("home.show.button")

      expect(page).to have_text(question.text)
    end
  end
end
