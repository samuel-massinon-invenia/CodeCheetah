class Api::V1::BenchmarkReportsController < ApplicationController
    respond_to :json

    def index
        render text: "hi"
    end

    def upload
        render text: "Thanks for sending a POST request with cURL! Payload: #{request.body.read}"

        byebug

    end

end
