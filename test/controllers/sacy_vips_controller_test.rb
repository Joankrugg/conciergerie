require "test_helper"

class SacyVipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sacy_vips_new_url
    assert_response :success
  end

  test "should get create" do
    get sacy_vips_create_url
    assert_response :success
  end
end
