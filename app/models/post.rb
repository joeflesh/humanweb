class Post < ActiveRecord::Base
  acts_as_url :title, :sync_url => true   # for making slugs with Stringex
  
  def to_param
    url
  end
end
