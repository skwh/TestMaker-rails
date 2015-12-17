class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.string :topic
      t.integer :level
      t.integer :exam_id

      t.timestamps
    end
  end
end
