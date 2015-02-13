class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:edit, :update, :show, :destroy]

  def index
    @blog_posts=BlogPost.all
  end

  def new
    @blog_post=BlogPost.new
  end

  def create
    @blog_post=BlogPost.new(blog_post_params)
    if @blog_post.save
      flash[:notice] = "Blog Post Posted"
      redirect_to blog_posts_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog_post.update(blog_post_params)
      flash[:notice] = "Blog Post Updated"
    else
      render :edit
    end
  end

  def destroy
    @blog_post.destroy
  end

  private

  def set_blog_post
    @blog_post=BlogPost.find(params[:id])
  end

  def blog_post_params
    params.require(:blog_post).permit(:blog_post, :blog_title, :date, :emotion)
  end
end
