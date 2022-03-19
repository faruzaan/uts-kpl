require "application_system_test_case"

class TunjangansTest < ApplicationSystemTestCase
  setup do
    @tunjangan = tunjangans(:one)
  end

  test "visiting the index" do
    visit tunjangans_url
    assert_selector "h1", text: "Tunjangans"
  end

  test "creating a Tunjangan" do
    visit tunjangans_url
    click_on "New Tunjangan"

    fill_in "Besar tunjangan", with: @tunjangan.besar_tunjangan
    fill_in "Nama", with: @tunjangan.nama
    click_on "Create Tunjangan"

    assert_text "Tunjangan was successfully created"
    click_on "Back"
  end

  test "updating a Tunjangan" do
    visit tunjangans_url
    click_on "Edit", match: :first

    fill_in "Besar tunjangan", with: @tunjangan.besar_tunjangan
    fill_in "Nama", with: @tunjangan.nama
    click_on "Update Tunjangan"

    assert_text "Tunjangan was successfully updated"
    click_on "Back"
  end

  test "destroying a Tunjangan" do
    visit tunjangans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tunjangan was successfully destroyed"
  end
end
