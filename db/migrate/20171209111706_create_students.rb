class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :teacher_id
      t.integer :grade_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
