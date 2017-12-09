class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :subject_id
      t.integer :question_id
      t.integer :teacher_id
      t.integer :grade_id

      t.timestamps null: false
    end
  end
end
