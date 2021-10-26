class DreamsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        @dreams = Dream.all
        render json: @dreams, status: 200
    end

    private

    def render_not_found_response
        render json: { error: "Dream not found" }, status: :not_found
    end
end
