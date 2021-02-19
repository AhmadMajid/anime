require "application_system_test_case"

class AnimeListsTest < ApplicationSystemTestCase
  setup do
    @anime_list = anime_lists(:one)
  end

  test "visiting the index" do
    visit anime_lists_url
    assert_selector "h1", text: "Anime Lists"
  end

  test "creating a Anime list" do
    visit anime_lists_url
    click_on "New Anime List"

    fill_in "Description", with: @anime_list.description
    fill_in "Title", with: @anime_list.title
    click_on "Create Anime list"

    assert_text "Anime list was successfully created"
    click_on "Back"
  end

  test "updating a Anime list" do
    visit anime_lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @anime_list.description
    fill_in "Title", with: @anime_list.title
    click_on "Update Anime list"

    assert_text "Anime list was successfully updated"
    click_on "Back"
  end

  test "destroying a Anime list" do
    visit anime_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anime list was successfully destroyed"
  end
end
