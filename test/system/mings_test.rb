require "application_system_test_case"

class MingsTest < ApplicationSystemTestCase
  setup do
    @ming = mings(:one)
  end

  test "visiting the index" do
    visit mings_url
    assert_selector "h1", text: "Mings"
  end

  test "creating a Ming" do
    visit mings_url
    click_on "New Ming"

    fill_in "Content", with: @ming.content
    fill_in "Title", with: @ming.title
    click_on "Create Ming"

    assert_text "Ming was successfully created"
    click_on "Back"
  end

  test "updating a Ming" do
    visit mings_url
    click_on "Edit", match: :first

    fill_in "Content", with: @ming.content
    fill_in "Title", with: @ming.title
    click_on "Update Ming"

    assert_text "Ming was successfully updated"
    click_on "Back"
  end

  test "destroying a Ming" do
    visit mings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ming was successfully destroyed"
  end
end
