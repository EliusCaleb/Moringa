class TutorsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    skip_before_action :authorize, only: [:create, :destroy]
    def index
        tutors = Tutor.all
        render json: tutors
    end

    def show
        tutor = find_tutor
        render json: tutor
    end
    
    def create
       tutor = Tutor.create(tutor_params)
        if tutor.valid?
          render json: tutor, status: :created
        else
          render json: { errors: tutor.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        tutor = find_tutor
        tutor.destroy
        head :no_content
    end


    private
    def find_tutor
      Tutor.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Tutor not found" }, status: :not_found
    end

    def tutor_params
        params.permit(:firstname, :lastname, :email, :work_id, :password, :password_confirmation)
    end
end
