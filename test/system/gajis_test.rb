require "application_system_test_case"

class GajisTest < ApplicationSystemTestCase
  setup do
    @gaji = gajis(:one)
  end

  test "visiting the index" do
    visit gajis_url
    assert_selector "h1", text: "Gajis"
  end

  test "creating a Gaji" do
    visit gajis_url
    click_on "New Gaji"

    fill_in "Desc", with: @gaji.desc
    fill_in "Id karyawan", with: @gaji.id_karyawan
    fill_in "Id tunjangan", with: @gaji.id_tunjangan
    fill_in "Potongan", with: @gaji.potongan
    click_on "Create Gaji"

    assert_text "Gaji was successfully created"
    click_on "Back"
  end

  test "updating a Gaji" do
    visit gajis_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @gaji.desc
    fill_in "Id karyawan", with: @gaji.id_karyawan
    fill_in "Id tunjangan", with: @gaji.id_tunjangan
    fill_in "Potongan", with: @gaji.potongan
    click_on "Update Gaji"

    assert_text "Gaji was successfully updated"
    click_on "Back"
  end

  test "destroying a Gaji" do
    visit gajis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gaji was successfully destroyed"
  end
end
