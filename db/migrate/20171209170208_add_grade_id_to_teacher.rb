class AddGradeIdToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :grade_id, :integer
  end
end
