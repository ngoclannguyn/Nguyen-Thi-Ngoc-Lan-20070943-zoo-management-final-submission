require "test_helper"

class AnimalPlacementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_placement = animal_placements(:one)
  end

  test "should get index" do
    get animal_placements_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_placement_url
    assert_response :success
  end

  test "should create animal_placement" do
    assert_difference("AnimalPlacement.count") do
      post animal_placements_url, params: { animal_placement: { location: @animal_placement.location, room: @animal_placement.room } }
    end

    assert_redirected_to animal_placement_url(AnimalPlacement.last)
  end

  test "should show animal_placement" do
    get animal_placement_url(@animal_placement)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_placement_url(@animal_placement)
    assert_response :success
  end

  test "should update animal_placement" do
    patch animal_placement_url(@animal_placement), params: { animal_placement: { location: @animal_placement.location, room: @animal_placement.room } }
    assert_redirected_to animal_placement_url(@animal_placement)
  end

  test "should destroy animal_placement" do
    assert_difference("AnimalPlacement.count", -1) do
      delete animal_placement_url(@animal_placement)
    end

    assert_redirected_to animal_placements_url
  end
end
