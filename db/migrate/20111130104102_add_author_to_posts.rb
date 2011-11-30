class AddAuthorToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :author_id, :int
  end

  def self.down
    remove_column :posts, :author_id
  end
end
