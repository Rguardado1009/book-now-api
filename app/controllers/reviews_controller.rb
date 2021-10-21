class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    skip_before_action :confirm_authentication

    def index
        render json: Reviews.all, each_serializer: ReviewsSerializer
    end

    def show
        reviews = find_reviews
        render json: reviews, serializer: ReviewsSerializer
    end

    def create
        reviews = Reviews.create!(reviews_params)
        render json: reviews, status: :created
    end

    def update
        reviews = find_reviews
        reviews.update!(reviews_params)
        render json: reviews, status: :ok
    end

    def destroy
        reviews = find_reviews
        reviews.destroy!
        head :no_content
    end

    private

    def find_reviews
        Reviews.find(params[:id])
    end

    def reviews_params
        params.permit(:title, :content, :rating, :user_id, :employee_id)
    end

    def render_not_found_response
        render json: {errors: "reviews not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
