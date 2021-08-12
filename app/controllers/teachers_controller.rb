class TeachersController < ApplicationController
    def login
        teacher = Teacher.find_by(name: params[:username])
        # byebug
        if teacher
            render json: teacher, include: [{students: {include: {studentgoals: {methods: [:goal_title]}}}}, :goals]
        else
            render json: {error: "Wrong Username"}
        end
    end
end
