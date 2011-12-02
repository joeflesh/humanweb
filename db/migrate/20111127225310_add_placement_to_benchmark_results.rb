class AddPlacementToBenchmarkResults < ActiveRecord::Migration
  def self.up
    add_column :benchmark_results, :placement, :string
  end

  def self.down
    remove_column :benchmark_results, :placement
  end
end
