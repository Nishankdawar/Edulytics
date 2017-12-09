class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :question_id
      t.integer :student_id
      t.boolean :solved

      t.timestamps null: false
    end
  end
end
