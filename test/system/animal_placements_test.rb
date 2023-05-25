require "application_system_test_case"

class AnimalPlacementsTest < ApplicationSystemTestCase
  setup do
    @animal_placement = animal_placements(:one)
  end

  test "visiting the index" do
    visit animal_placements_url
    assert_selector "h1", text: "Animal placements"
  end

  test "should create animal placement" do
    visit animal_placements_url
    click_on "New animal placement"

    fill_in "Location", with: @animal_placement.location
    fill_in "Room", with: @animal_placement.room
    click_on "Create Animal placement"

    assert_text "Animal placement was successfully created"
    click_on "Back"
  end

  test "should update Animal placement" do
    visit animal_placement_url(@animal_placement)
    click_on "Edit this animal placement", match: :first

    fill_in "Location", with: @animal_placement.location
    fill_in "Room", with: @animal_placement.room
    click_on "Update Animal placement"

    assert_text "Animal placement was successfully updated"
    click_on "Back"
  end

  test "should destroy Animal placement" do
    visit animal_placement_url(@animal_placement)
    click_on "Destroy this animal placement", match: :first

    assert_text "Animal placement was successfully destroyed"
  end
end
