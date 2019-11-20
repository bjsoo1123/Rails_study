class BlogController < ApplicationController
  def index
    @posts = Post.all.reverse
    # 가장 최근 post를 list 맨 위에 띄우기 위해 reverse
  end

  def create
    Post.create(writer: params[:irm], content: params[:naeyong])
    redirect_to :root
  end

  def destroy
    destroyId = Post.find(params[:id])
    destroyId.destroy
    redirect_to :root
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    updateId = Post.find(params[:updateId])
    updateId.writer = params[:irm]
    updateId.content = params[:naeyong]
    updateId.save
    redirect_to :root
  end

  def comment
    Comment.create(post_id: params[:postId], person: params[:commentIrm], msg: params[:commentNaeyong])
    redirect_to :root
  end
end
