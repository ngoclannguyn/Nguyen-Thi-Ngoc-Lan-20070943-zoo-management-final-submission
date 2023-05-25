require "test_helper"

class ZookeepersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zookeeper = zookeepers(:one)
  end

  test "should get index" do
    get zookeepers_url
    assert_response :success
  end

  test "should get new" do
    get new_zookeeper_url
    assert_response :success
  end

  test "should create zookeeper" do
    assert_difference("Zookeeper.count") do
      post zookeepers_url, params: { zookeeper: { dateofbirth: @zookeeper.dateofbirth, name: @zookeeper.name } }
    end

    assert_redirected_to zookeeper_url(Zookeeper.last)
  end

  test "should show zookeeper" do
    get zookeeper_url(@zookeeper)
    assert_response :success
  end

  test "should get edit" do
    get edit_zookeeper_url(@zookeeper)
    assert_response :success
  end

  test "should update zookeeper" do
    patch zookeeper_url(@zookeeper), params: { zookeeper: { dateofbirth: @zookeeper.dateofbirth, name: @zookeeper.name } }
    assert_redirected_to zookeeper_url(@zookeeper)
  end

  test "should destroy zookeeper" do
    assert_difference("Zookeeper.count", -1) do
      delete zookeeper_url(@zookeeper)
    end

    assert_redirected_to zookeepers_url
  end
end
