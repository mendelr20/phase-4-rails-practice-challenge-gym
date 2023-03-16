class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        gym = Gym.find(params[:id])
        render json: gym
    end

    def destroy
        gym = Gym.find(params[:id]).destroy
        render json: gym
    end

    private
  
    def render_not_found_response
      render json: { error: "Gym not found" }, status: :not_found
    end
end
