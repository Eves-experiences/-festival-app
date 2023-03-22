require "test_helper"

class MusicSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @music_set = music_sets(:one)
  end

  test "should get index" do
    get music_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_music_set_url
    assert_response :success
  end

  test "should create music_set" do
    assert_difference("MusicSet.count") do
      post music_sets_url, params: { music_set: { date: @music_set.date, duration: @music_set.duration, name: @music_set.name, style: @music_set.style } }
    end

    assert_redirected_to music_set_url(MusicSet.last)
  end

  test "should show music_set" do
    get music_set_url(@music_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_music_set_url(@music_set)
    assert_response :success
  end

  test "should update music_set" do
    patch music_set_url(@music_set), params: { music_set: { date: @music_set.date, duration: @music_set.duration, name: @music_set.name, style: @music_set.style } }
    assert_redirected_to music_set_url(@music_set)
  end

  test "should destroy music_set" do
    assert_difference("MusicSet.count", -1) do
      delete music_set_url(@music_set)
    end

    assert_redirected_to music_sets_url
  end
end
