# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_30_143545) do

  create_table "goals", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_goals_on_teacher_id"
  end

  create_table "studentgoals", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "goal_id", null: false
    t.integer "star"
    t.boolean "completed"
    t.integer "stars_to_complete"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["goal_id"], name: "index_studentgoals_on_goal_id"
    t.index ["student_id"], name: "index_studentgoals_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "grade"
    t.integer "teacher_id", null: false
    t.string "hair_color"
    t.integer "siblings_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_students_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "subject"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "goals", "teachers"
  add_foreign_key "studentgoals", "goals"
  add_foreign_key "studentgoals", "students"
  add_foreign_key "students", "teachers"
end
