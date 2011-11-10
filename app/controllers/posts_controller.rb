# Blog Posts
class PostsController < ApplicationController
  layout 'blog'
  load_and_authorize_resource :find_by => :url  # this is a Devise method

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
