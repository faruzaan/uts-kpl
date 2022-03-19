require 'test_helper'

class MsBrandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ms_brands_index_url
    assert_response :success
  end

end
