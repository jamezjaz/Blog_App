class PostsController < ApplicationController
  include PostsHelper
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment.post_id = @post.id
  end

  def new
    @post = Post.new
  end

  # def create
  #   @post = Post.new
  #   @post.title = params[:post][:title]
  #   @post.body = params[:post][:body]
  #   @post.save
  #   redirect_to post_path(@post)
  # end

  def create
    @post = Post.new(post_params)
    @post.save
    flash.notice = 'Post ' # {@post.title}' Created Successfully!'
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to action: 'index'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash.notice = 'Post ' # {@post.title}' Updated!'
    redirect_to post_path(@post)
  end
end
