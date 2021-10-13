class UsersController < ApplicationController
    skip_before_action :confirm_authentication
  
    
  
    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end
    
    def show
        user = User.find_by(id: session[:user_id])
        if user
          render json: user, status: :ok
        else
          render json: { user: 'not logged in' }, status: :unauthorized
        end
      end 
      
    private
    
    def user_params
        params.permit(:username, :password)
    end
end
