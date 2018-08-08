require "application_system_test_case"

class ActivesTest < ApplicationSystemTestCase
  setup do
    @active = actives(:one)
  end

  test "visiting the index" do
    visit actives_url
    assert_selector "h1", text: "Actives"
  end

  test "creating a Active" do
    visit actives_url
    click_on "New Active"

    fill_in "From", with: @active.from
    fill_in "To", with: @active.to
    click_on "Create Active"

    assert_text "Active was successfully created"
    click_on "Back"
  end

  test "updating a Active" do
    visit actives_url
    click_on "Edit", match: :first

    fill_in "From", with: @active.from
    fill_in "To", with: @active.to
    click_on "Update Active"

    assert_text "Active was successfully updated"
    click_on "Back"
  end

  test "destroying a Active" do
    visit actives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Active was successfully destroyed"
  end
end
