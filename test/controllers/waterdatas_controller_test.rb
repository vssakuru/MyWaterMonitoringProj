require 'test_helper'

class WaterdatasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get waterdatas_index_url
    assert_response :success
  end

  test "should get import" do
    get waterdatas_import_url
    assert_response :success
  end

end
