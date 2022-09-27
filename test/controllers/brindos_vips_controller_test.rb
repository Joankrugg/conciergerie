require "test_helper"

class BrindosVipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get brindos_vips_new_url
    assert_response :success
  end

  test "should get create" do
    get brindos_vips_create_url
    assert_response :success
  end
end
