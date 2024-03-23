class PostController < ApplicationController
  before_action :page_required_auth

  def new
    @post = Post.new
  end

  def index
    # sort list post by updated time
    @list_post = Post.all.order(updated_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(create_post_param)
    @post.user = current_user
    if @post.save
      redirect_to '/'
    else
      flash[:error] = "Cant't save post, some error occurred"
    end
  end

  private
  def create_post_param
    params.require(:post).permit(:title, :content)
  end
end
