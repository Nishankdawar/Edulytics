class CreateTestQuestionMappings < ActiveRecord::Migration
  def change
    create_table :test_question_mappings do |t|
      t.integer :test_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
