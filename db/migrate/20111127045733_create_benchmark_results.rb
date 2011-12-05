class CreateBenchmarkResults < ActiveRecord::Migration
  def self.up
    create_table :benchmark_results do |t|

      t.text :raw_results
      t.string :instance_type
      t.string :ami_id

      t.timestamps
    end
  end

  def self.down
    drop_table :benchmark_results
  end
end
