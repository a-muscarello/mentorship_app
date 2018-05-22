require 'test_helper'

class PrivateChatRoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_chat_rooms_index_url
    assert_response :success
  end

  test "should get new" do
    get private_chat_rooms_new_url
    assert_response :success
  end

  test "should get create" do
    get private_chat_rooms_create_url
    assert_response :success
  end

  test "should get show" do
    get private_chat_rooms_show_url
    assert_response :success
  end

end
