require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  test "Crating a new quote" do

    visit quotes_path
    assert_selector "h1", text: "Quotes"

    click_on "New quote"
    assert_selector "h1", text: "New quote"

    fill_in "Name", with: "Capybara quote"
    click_on "Create Quote"

    assert_selector "h1", text: "Quotes"
    assert_text "Capybara quote"
  end
end
