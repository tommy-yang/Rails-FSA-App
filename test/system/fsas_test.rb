require "application_system_test_case"

class FsasTest < ApplicationSystemTestCase
  setup do
    @fsa = fsas(:one)
  end

  test "visiting the index" do
    visit fsas_url
    assert_selector "h1", text: "Fsas"
  end

  test "creating a Fsa" do
    visit fsas_url
    click_on "New Fsa"

    fill_in "Fsacode", with: @fsa.fsacode
    click_on "Create Fsa"

    assert_text "Fsa was successfully created"
    click_on "Back"
  end

  test "updating a Fsa" do
    visit fsas_url
    click_on "Edit", match: :first

    fill_in "Fsacode", with: @fsa.fsacode
    click_on "Update Fsa"

    assert_text "Fsa was successfully updated"
    click_on "Back"
  end

  test "destroying a Fsa" do
    visit fsas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fsa was successfully destroyed"
  end
end
