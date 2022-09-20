require "test_helper"

class VipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vips_new_url
    assert_response :success
  end

  test "should get create" do
    get vips_create_url
    assert_response :success
  end

  test "should get show" do
    get vips_show_url
    assert_response :success
  end
end
