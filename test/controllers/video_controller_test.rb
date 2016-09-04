require 'test_helper'

class VideoControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get video_list_url
    assert_response :success
  end

  test "should get show" do
    get video_show_url
    assert_response :success
  end

  test "should get create" do
    get video_create_url
    assert_response :success
  end

end
