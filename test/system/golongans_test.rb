require "application_system_test_case"

class GolongansTest < ApplicationSystemTestCase
  setup do
    @golongan = golongans(:one)
  end

  test "visiting the index" do
    visit golongans_url
    assert_selector "h1", text: "Golongans"
  end

  test "creating a Golongan" do
    visit golongans_url
    click_on "New Golongan"

    fill_in "Gapok", with: @golongan.gapok
    click_on "Create Golongan"

    assert_text "Golongan was successfully created"
    click_on "Back"
  end

  test "updating a Golongan" do
    visit golongans_url
    click_on "Edit", match: :first

    fill_in "Gapok", with: @golongan.gapok
    click_on "Update Golongan"

    assert_text "Golongan was successfully updated"
    click_on "Back"
  end

  test "destroying a Golongan" do
    visit golongans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Golongan was successfully destroyed"
  end
end
