# Blog Posts
class PostsController < ApplicationController
    layout 'blog'
    load_and_authorize_resource  # this is a CanCan method

  def create
    save @post
  end

  def update
    save @post
  end

  def save post
    post.title = params[:post][:title]
    post.body = params[:post][:body]

    if post.save
      redirect_to post_path(post)
    else
      flash.alert = 'Failsauce.'
      render :new
    end
  end
end
