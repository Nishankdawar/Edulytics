class CreateQuestionTagMappings < ActiveRecord::Migration
  def change
    create_table :question_tag_mappings do |t|
      t.integer :question_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
