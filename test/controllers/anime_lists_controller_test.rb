require 'test_helper'

class AnimeListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anime_list = anime_lists(:one)
  end

  test "should get index" do
    get anime_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_anime_list_url
    assert_response :success
  end

  test "should create anime_list" do
    assert_difference('AnimeList.count') do
      post anime_lists_url, params: { anime_list: { description: @anime_list.description, title: @anime_list.title } }
    end

    assert_redirected_to anime_list_url(AnimeList.last)
  end

  test "should show anime_list" do
    get anime_list_url(@anime_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_anime_list_url(@anime_list)
    assert_response :success
  end

  test "should update anime_list" do
    patch anime_list_url(@anime_list), params: { anime_list: { description: @anime_list.description, title: @anime_list.title } }
    assert_redirected_to anime_list_url(@anime_list)
  end

  test "should destroy anime_list" do
    assert_difference('AnimeList.count', -1) do
      delete anime_list_url(@anime_list)
    end

    assert_redirected_to anime_lists_url
  end
end
