class AddUrlToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :url, :string
    add_index :posts, :url
  end

  def self.down
    remove_column :posts, :url
  end
end
