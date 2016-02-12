class CreateBenchmarkResults < ActiveRecord::Migration
  def change
    create_table :benchmark_results do |t|
      t.string :name
      t.float :score
      t.integer :elapsed_time
      t.references :benchmark_report, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
