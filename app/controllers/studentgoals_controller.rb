class StudentgoalsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    before_action :find_studentgoal, only: [:destroy]
    def create
        studentgoal = Studentgoal.create(studentgoal_params)
        render json: studentgoal
    end

    def destroy
        # find_studentgoal
        @studentgoal.destroy
        render json: @studentgoal
    end

    def update
        new_star = Studentgoal.addStar(params[:id])
        render json: new_star
    end

    private

    def studentgoal_params
        params.permit(:student_id, :goal_id, :star, :completed, :stars_to_complete)
    end

    def find_studentgoal
        @studentgoal = Studentgoal.find(params[:id])
    end

    def record_not_found
        render json: {error: "Studentgoal not found"}
    end

end
