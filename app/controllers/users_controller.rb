class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  skip_before_action :confirm_authentication, only: [:current, :create]
  
    
  
    def create
     user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end
    
    def current
        user = User.find_by(id: session[:user_id])
        if user
          render json: user, status: :ok
        else
          render json: { message: 'not logged in' }, status: :unauthorized
        end
      end 

    def index
        render json: User.all
    end

    def show
        user = find_user
        render json: user
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def update
        user = find_user
        user.update!(user_params)
        render json: user, status: :ok
    end

    private
    def find_user
      User.find(params[:id])
  end
    def user_params
        params.permit(:user_id, :username, :password, :name, :email)
    end
    def render_not_found_response
      render json: {error: "User not found"}, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end
end
