require 'test_helper'

class BenchmarkResultControllerTest < ActionController::TestCase

  test "should return correct benchmark_result_score" do
    b1 = benchmark_results(:one)
    b2 = benchmark_results(:two)
    binding.pry
  end

end
