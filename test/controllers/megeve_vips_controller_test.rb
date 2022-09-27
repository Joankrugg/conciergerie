require "test_helper"

class MegeveVipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get megeve_vips_new_url
    assert_response :success
  end
end
