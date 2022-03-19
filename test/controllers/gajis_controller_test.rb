require 'test_helper'

class GajisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gaji = gajis(:one)
  end

  test "should get index" do
    get gajis_url
    assert_response :success
  end

  test "should get new" do
    get new_gaji_url
    assert_response :success
  end

  test "should create gaji" do
    assert_difference('Gaji.count') do
      post gajis_url, params: { gaji: { desc: @gaji.desc, id_karyawan: @gaji.id_karyawan, id_tunjangan: @gaji.id_tunjangan, potongan: @gaji.potongan } }
    end

    assert_redirected_to gaji_url(Gaji.last)
  end

  test "should show gaji" do
    get gaji_url(@gaji)
    assert_response :success
  end

  test "should get edit" do
    get edit_gaji_url(@gaji)
    assert_response :success
  end

  test "should update gaji" do
    patch gaji_url(@gaji), params: { gaji: { desc: @gaji.desc, id_karyawan: @gaji.id_karyawan, id_tunjangan: @gaji.id_tunjangan, potongan: @gaji.potongan } }
    assert_redirected_to gaji_url(@gaji)
  end

  test "should destroy gaji" do
    assert_difference('Gaji.count', -1) do
      delete gaji_url(@gaji)
    end

    assert_redirected_to gajis_url
  end
end
