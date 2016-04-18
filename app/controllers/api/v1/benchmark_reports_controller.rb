class Api::V1::BenchmarkReportsController < ApplicationController
    skip_before_action :verify_authenticity_token
    respond_to :json

    def index
        render text: "hi"
    end

    def upload
        unless BenchmarkReport.find_by(name: params[:name]) == nil
            throw("error")
        end

        report = BenchmarkReport.create(name: params[:name])

        params[:results].each do |name, score|
            BenchmarkResult.create(name: name, score: score, benchmark_report_id: report.id)
        end

        render text: "Thanks for sending a POST request with cURL! Payload: #{request.body.read}"
    end

end
