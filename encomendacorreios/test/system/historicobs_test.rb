require "application_system_test_case"

class HistoricobsTest < ApplicationSystemTestCase
  setup do
    @historicob = historicobs(:one)
  end

  test "visiting the index" do
    visit historicobs_url
    assert_selector "h1", text: "Historicobs"
  end

  test "creating a Historicob" do
    visit historicobs_url
    click_on "New Historicob"

    click_on "Create Historicob"

    assert_text "Historicob was successfully created"
    click_on "Back"
  end

  test "updating a Historicob" do
    visit historicobs_url
    click_on "Edit", match: :first

    click_on "Update Historicob"

    assert_text "Historicob was successfully updated"
    click_on "Back"
  end

  test "destroying a Historicob" do
    visit historicobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historicob was successfully destroyed"
  end
end
