class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :tag_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
