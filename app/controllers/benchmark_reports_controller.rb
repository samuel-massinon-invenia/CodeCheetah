class BenchmarkReportsController < ApplicationController

  def compare
    @benchmark_report_1 = BenchmarkReport.find(params[:id_1])
    @benchmark_report_2 = BenchmarkReport.find(params[:id_2])

    @same_results = []

    for this_result in @benchmark_report_1.benchmark_result
        other_result = @benchmark_report_2.benchmark_result.find_by(name: this_result.name)


        if other_result
            @same_results.append([this_result, other_result])
        end
    end

  end

end
