class BenchmarkResultsController < ApplicationController

  def show
    @benchmark_result = BenchmarkResult.find(params[:id])
  end

  def create
    @benchmark_result = BenchmarkResult.new
  end

end
