class EmployeesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    skip_before_action :confirm_authentication, only: [:index]

    def index
        render json: Employee.all, each_serializer: EmployeeSerializer
    end

    def show
        
            employee = find_employee
            render json: employee, serializer: EmployeeSerializer
    
    end


    private

    def find_employee
        Employee.find(params[:id])
    end
    def appointment_params
        params.permit(:employee_id, :description)
    end

    def render_not_found_response
        render json: {error: "Appointment not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
