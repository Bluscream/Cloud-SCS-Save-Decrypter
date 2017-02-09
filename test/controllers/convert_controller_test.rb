require 'test_helper'

class ConvertControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get convert_index_url
    assert_response :success
  end

end
