class StudentsController < ApplicationController
    
    def create
        new_student = Student.create(student_params)
            
        render json: new_student.to_json({include: {studentgoals: {methods: [:goal_title]}}})
    end

     private
     def student_params
        params.permit(:name, :grade, :hair_color, :siblings_amount, :teacher_id)
     end

     def record_not_found
        render json: {error: "Student not found"}
    end
end
