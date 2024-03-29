require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "should create Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Date", with: @post.date
    fill_in "Description", with: @post.description
    fill_in "Name", with: @post.name
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Date", with: @post.date
    fill_in "Description", with: @post.description
    fill_in "Name", with: @post.name
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
