class PostsController < ApplicationController
  
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    # this renders a view for a new post
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "The post was created successfully."
    else
      render 'new'
    end
  end

  def edit
    # this renders the edit view
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Update successfull."
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: "Post destroyed."
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
