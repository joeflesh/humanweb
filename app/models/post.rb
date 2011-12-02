class Post < ActiveRecord::Base
  acts_as_url :title, :sync_url => true   # for making slugs with Stringex

  belongs_to :author, :class_name => 'User'
  
  def to_param
    url
  end
end
