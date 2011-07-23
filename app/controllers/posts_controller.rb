class PostsController < ApplicationController
  expose(:post)
  expose(:posts) { Post.all }

  def create
    if post.save
      redirect_to action: :index
    else
      flash.now[:notice] = "Unable to commit. Did you fill everything in?"
      render :new
    end
  end
end
