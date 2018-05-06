require 'test_helper'

class WaterlevelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get _waterlevels_index_url
    assert_response :success
  end

end
