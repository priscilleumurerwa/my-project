require "application_system_test_case"

class BridesTest < ApplicationSystemTestCase
  setup do
    @bride = brides(:one)
  end

  test "visiting the index" do
    visit brides_url
    assert_selector "h1", text: "Brides"
  end

  test "creating a Bride" do
    visit brides_url
    click_on "New Bride"

    fill_in "Birth date", with: @bride.birth_date
    fill_in "Cell", with: @bride.cell
    fill_in "Country", with: @bride.country
    fill_in "District", with: @bride.district
    fill_in "Email", with: @bride.email
    fill_in "Gender", with: @bride.gender
    fill_in "Name", with: @bride.name
    fill_in "Phone", with: @bride.phone
    fill_in "Sector", with: @bride.sector
    click_on "Create Bride"

    assert_text "Bride was successfully created"
    click_on "Back"
  end

  test "updating a Bride" do
    visit brides_url
    click_on "Edit", match: :first

    fill_in "Birth date", with: @bride.birth_date
    fill_in "Cell", with: @bride.cell
    fill_in "Country", with: @bride.country
    fill_in "District", with: @bride.district
    fill_in "Email", with: @bride.email
    fill_in "Gender", with: @bride.gender
    fill_in "Name", with: @bride.name
    fill_in "Phone", with: @bride.phone
    fill_in "Sector", with: @bride.sector
    click_on "Update Bride"

    assert_text "Bride was successfully updated"
    click_on "Back"
  end

  test "destroying a Bride" do
    visit brides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bride was successfully destroyed"
  end
end
