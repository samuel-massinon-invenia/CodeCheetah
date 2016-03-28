class BenchmarkResultsController < ApplicationController

  def show
    @benchmark_result = BenchmarkResult.find(params[:id])
  end

  def create
    @benchmark_result = BenchmarkResult.new
  end

  def compare
    @benchmark_result_1 = BenchmarkResult.find(params[:id_1])
    @benchmark_result_2 = BenchmarkResult.find(params[:id_2])

    @diff = @benchmark_result_1.score - @benchmark_result_2.score
  end

end
