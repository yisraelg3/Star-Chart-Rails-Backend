class CreateStudentgoals < ActiveRecord::Migration[6.1]
  def change
    create_table :studentgoals do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :goal, null: false, foreign_key: true
      t.integer :star
      t.boolean :completed
      t.integer :stars_to_complete

      t.timestamps
    end
  end
end
