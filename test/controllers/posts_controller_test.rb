require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should create post" do
    assert_difference("Post.count") do
      post posts_url, params: { post: { body: @post.body, likes_count: @post.likes_count, reposts_count: @post.reposts_count, username: @post.username } }
    end

    assert_redirected_to posts_url
  end

  test "should repost post" do
    post "/posts/#{@post.id}/repost"

    assert_redirected_to posts_url
  end

  test "should like post" do
  post "/posts/#{@post.id}/like"

    assert_redirected_to posts_url
  end
end
