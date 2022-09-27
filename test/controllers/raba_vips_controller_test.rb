require "test_helper"

class RabaVipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get raba_vips_new_url
    assert_response :success
  end
end
