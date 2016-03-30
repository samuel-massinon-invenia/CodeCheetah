class Api::V1::BenchmarkReportsController < ApplicationController
    skip_before_action :verify_authenticity_token
    respond_to :json

    def index
        render text: "hi"
    end

    def upload
        render text: "Thanks for sending a POST request with cURL! Payload: #{request.body.read}"
    end

end
