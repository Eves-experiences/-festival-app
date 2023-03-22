require "application_system_test_case"

class DjsTest < ApplicationSystemTestCase
  setup do
    @dj = djs(:one)
  end

  test "visiting the index" do
    visit djs_url
    assert_selector "h1", text: "Djs"
  end

  test "should create dj" do
    visit djs_url
    click_on "New dj"

    fill_in "Age", with: @dj.age
    fill_in "Dj name", with: @dj.dj_name
    fill_in "Genre", with: @dj.genre
    fill_in "Name", with: @dj.name
    click_on "Create Dj"

    assert_text "Dj was successfully created"
    click_on "Back"
  end

  test "should update Dj" do
    visit dj_url(@dj)
    click_on "Edit this dj", match: :first

    fill_in "Age", with: @dj.age
    fill_in "Dj name", with: @dj.dj_name
    fill_in "Genre", with: @dj.genre
    fill_in "Name", with: @dj.name
    click_on "Update Dj"

    assert_text "Dj was successfully updated"
    click_on "Back"
  end

  test "should destroy Dj" do
    visit dj_url(@dj)
    click_on "Destroy this dj", match: :first

    assert_text "Dj was successfully destroyed"
  end
end
