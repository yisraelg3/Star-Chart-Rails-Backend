class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.belongs_to :teacher, null: false, foreign_key: true
      t.string :hair_color
      t.integer :siblings_amount

      t.timestamps
    end
  end
end
