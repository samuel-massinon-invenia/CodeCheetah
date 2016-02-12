class CreateBenchmarkRepos < ActiveRecord::Migration
  def change
    create_table :benchmark_repos do |t|

      t.timestamps null: false
    end
  end
end
