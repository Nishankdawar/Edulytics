class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :name
      t.integer :teacher_id
      t.integer :student_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
