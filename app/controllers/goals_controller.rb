class GoalsController < ApplicationController
    def create
        new_goal = Goal.create(goal_params)
        render json: new_goal
    end

    private
    def goal_params
        params.require(:goal).permit(:title, :description, :teacher_id)
    end

    def record_not_found
        render json: {error: "goal not found"}
    end
end
