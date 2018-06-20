class BoardController < ApplicationController
  def index
    @boards =Post.all
  end

  def show
    @board = Post.find(params[:id])
  end


  def new
  end

  def create
    p1 = Post.new
    p1.contents = params[:content]
    p1.title = params[:title]
    p1.save
    redirect_to "/board/#{p1.id}"
  end
  
  def edit
    @post=Post.find(params[:id])
  end

  def update
    post=Post.find(params[:id])
    post.contents=params[:content]
    post.title =params[:title]
    post.save
    redirect_to "/board/#{post.id}"
  end

  def destroy
    post=Post.find(params[:id])
    post.destroy
    redirect_to "/boards"
  end


end
