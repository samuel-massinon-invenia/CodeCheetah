class BenchmarkReport < ActiveRecord::Base
  belongs_to :benchmark_repo
  has_many :benchmark_result
end
