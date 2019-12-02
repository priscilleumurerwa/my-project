require "application_system_test_case"

class GroomsTest < ApplicationSystemTestCase
  setup do
    @groom = grooms(:one)
  end

  test "visiting the index" do
    visit grooms_url
    assert_selector "h1", text: "Grooms"
  end

  test "creating a Groom" do
    visit grooms_url
    click_on "New Groom"

    fill_in "Birth date", with: @groom.birth_date
    fill_in "Cell", with: @groom.cell
    fill_in "Country", with: @groom.country
    fill_in "District", with: @groom.district
    fill_in "Email", with: @groom.email
    fill_in "Gender", with: @groom.gender
    fill_in "Name", with: @groom.name
    fill_in "Phone", with: @groom.phone
    fill_in "Sector", with: @groom.sector
    click_on "Create Groom"

    assert_text "Groom was successfully created"
    click_on "Back"
  end

  test "updating a Groom" do
    visit grooms_url
    click_on "Edit", match: :first

    fill_in "Birth date", with: @groom.birth_date
    fill_in "Cell", with: @groom.cell
    fill_in "Country", with: @groom.country
    fill_in "District", with: @groom.district
    fill_in "Email", with: @groom.email
    fill_in "Gender", with: @groom.gender
    fill_in "Name", with: @groom.name
    fill_in "Phone", with: @groom.phone
    fill_in "Sector", with: @groom.sector
    click_on "Update Groom"

    assert_text "Groom was successfully updated"
    click_on "Back"
  end

  test "destroying a Groom" do
    visit grooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Groom was successfully destroyed"
  end
end
