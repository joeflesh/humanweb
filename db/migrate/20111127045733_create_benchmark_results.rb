class CreateBenchmarkResults < ActiveRecord::Migration
  def self.up
    create_table :benchmark_results do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :benchmark_results
  end
end
