class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all.order(created_at: :desc)
    @post = Post.new
  end

  # POST /posts or /posts.json
  def create
    @post = Post.create(post_params)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to posts_path }
    end
  end

  def repost
    post = Post.find(params[:id])
    post.update(reposts_count: post.reposts_count + 1)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to posts_path }
    end
  end

  def like
    post = Post.find(params[:id])
    post.update(likes_count: post.likes_count + 1)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to posts_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:username, :body, :likes_count, :reposts_count)
    end
end
