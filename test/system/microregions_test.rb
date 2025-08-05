require "application_system_test_case"

class MicroregionsTest < ApplicationSystemTestCase
  setup do
    @microregion = microregions(:one)
  end

  test "visiting the index" do
    visit microregions_url
    assert_selector "h1", text: "Microregions"
  end

  test "should create microregion" do
    visit microregions_url
    click_on "New microregion"

    fill_in "Name", with: @microregion.name
    fill_in "Region", with: @microregion.region_id
    click_on "Create Microregion"

    assert_text "Microregion was successfully created"
    click_on "Back"
  end

  test "should update Microregion" do
    visit microregion_url(@microregion)
    click_on "Edit this microregion", match: :first

    fill_in "Name", with: @microregion.name
    fill_in "Region", with: @microregion.region_id
    click_on "Update Microregion"

    assert_text "Microregion was successfully updated"
    click_on "Back"
  end

  test "should destroy Microregion" do
    visit microregion_url(@microregion)
    click_on "Destroy this microregion", match: :first

    assert_text "Microregion was successfully destroyed"
  end
end
