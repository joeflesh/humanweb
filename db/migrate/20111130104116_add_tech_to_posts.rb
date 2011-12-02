class AddTechToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :tech, :boolean
  end

  def self.down
    remove_column :posts, :tech
  end
end
