require "application_system_test_case"

class MusicSetsTest < ApplicationSystemTestCase
  setup do
    @music_set = music_sets(:one)
  end

  test "visiting the index" do
    visit music_sets_url
    assert_selector "h1", text: "Music sets"
  end

  test "should create music set" do
    visit music_sets_url
    click_on "New music set"

    fill_in "Date", with: @music_set.date
    fill_in "Duration", with: @music_set.duration
    fill_in "Name", with: @music_set.name
    fill_in "Style", with: @music_set.style
    click_on "Create Music set"

    assert_text "Music set was successfully created"
    click_on "Back"
  end

  test "should update Music set" do
    visit music_set_url(@music_set)
    click_on "Edit this music set", match: :first

    fill_in "Date", with: @music_set.date
    fill_in "Duration", with: @music_set.duration
    fill_in "Name", with: @music_set.name
    fill_in "Style", with: @music_set.style
    click_on "Update Music set"

    assert_text "Music set was successfully updated"
    click_on "Back"
  end

  test "should destroy Music set" do
    visit music_set_url(@music_set)
    click_on "Destroy this music set", match: :first

    assert_text "Music set was successfully destroyed"
  end
end
