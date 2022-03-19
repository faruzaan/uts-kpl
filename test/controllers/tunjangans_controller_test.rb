require 'test_helper'

class TunjangansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tunjangan = tunjangans(:one)
  end

  test "should get index" do
    get tunjangans_url
    assert_response :success
  end

  test "should get new" do
    get new_tunjangan_url
    assert_response :success
  end

  test "should create tunjangan" do
    assert_difference('Tunjangan.count') do
      post tunjangans_url, params: { tunjangan: { besar_tunjangan: @tunjangan.besar_tunjangan, nama: @tunjangan.nama } }
    end

    assert_redirected_to tunjangan_url(Tunjangan.last)
  end

  test "should show tunjangan" do
    get tunjangan_url(@tunjangan)
    assert_response :success
  end

  test "should get edit" do
    get edit_tunjangan_url(@tunjangan)
    assert_response :success
  end

  test "should update tunjangan" do
    patch tunjangan_url(@tunjangan), params: { tunjangan: { besar_tunjangan: @tunjangan.besar_tunjangan, nama: @tunjangan.nama } }
    assert_redirected_to tunjangan_url(@tunjangan)
  end

  test "should destroy tunjangan" do
    assert_difference('Tunjangan.count', -1) do
      delete tunjangan_url(@tunjangan)
    end

    assert_redirected_to tunjangans_url
  end
end
