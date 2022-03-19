require 'test_helper'

class MsProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ms_products_index_url
    assert_response :success
  end

end
