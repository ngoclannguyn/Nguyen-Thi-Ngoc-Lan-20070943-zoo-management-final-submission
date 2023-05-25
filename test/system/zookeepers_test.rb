require "application_system_test_case"

class ZookeepersTest < ApplicationSystemTestCase
  setup do
    @zookeeper = zookeepers(:one)
  end

  test "visiting the index" do
    visit zookeepers_url
    assert_selector "h1", text: "Zookeepers"
  end

  test "should create zookeeper" do
    visit zookeepers_url
    click_on "New zookeeper"

    fill_in "Dateofbirth", with: @zookeeper.dateofbirth
    fill_in "Name", with: @zookeeper.name
    click_on "Create Zookeeper"

    assert_text "Zookeeper was successfully created"
    click_on "Back"
  end

  test "should update Zookeeper" do
    visit zookeeper_url(@zookeeper)
    click_on "Edit this zookeeper", match: :first

    fill_in "Dateofbirth", with: @zookeeper.dateofbirth
    fill_in "Name", with: @zookeeper.name
    click_on "Update Zookeeper"

    assert_text "Zookeeper was successfully updated"
    click_on "Back"
  end

  test "should destroy Zookeeper" do
    visit zookeeper_url(@zookeeper)
    click_on "Destroy this zookeeper", match: :first

    assert_text "Zookeeper was successfully destroyed"
  end
end
