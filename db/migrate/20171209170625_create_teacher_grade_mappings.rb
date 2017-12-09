class CreateTeacherGradeMappings < ActiveRecord::Migration
  def change
    create_table :teacher_grade_mappings do |t|
      t.integer :teacher_id
      t.integer :grade_id

      t.timestamps null: false
    end
  end
end
