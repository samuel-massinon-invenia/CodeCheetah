class CreateBenchmarkReports < ActiveRecord::Migration
  def change
    create_table :benchmark_reports do |t|
      t.references :benchmark_repo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
