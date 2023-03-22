require "test_helper"

class DjsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dj = djs(:one)
  end

  test "should get index" do
    get djs_url
    assert_response :success
  end

  test "should get new" do
    get new_dj_url
    assert_response :success
  end

  test "should create dj" do
    assert_difference("Dj.count") do
      post djs_url, params: { dj: { age: @dj.age, dj_name: @dj.dj_name, genre: @dj.genre, name: @dj.name } }
    end

    assert_redirected_to dj_url(Dj.last)
  end

  test "should show dj" do
    get dj_url(@dj)
    assert_response :success
  end

  test "should get edit" do
    get edit_dj_url(@dj)
    assert_response :success
  end

  test "should update dj" do
    patch dj_url(@dj), params: { dj: { age: @dj.age, dj_name: @dj.dj_name, genre: @dj.genre, name: @dj.name } }
    assert_redirected_to dj_url(@dj)
  end

  test "should destroy dj" do
    assert_difference("Dj.count", -1) do
      delete dj_url(@dj)
    end

    assert_redirected_to djs_url
  end
end
