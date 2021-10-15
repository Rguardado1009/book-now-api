class ServicesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    skip_before_action :confirm_authentication
    
    def index
        render json: Service.all
    end

    def show
        service = find_service
        render json: service, serializer: ServiceSerializer
    end


    private

    def find_service
        Service.find(params[:id])
    end
    def service_params
        params.permit(:name, :description, :hourly_rate, :duration)
    end

    def render_not_found_response
        render json: {error: "Appointment not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
