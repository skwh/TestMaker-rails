class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :type
      t.integer :level
      t.integer :test_id

      t.timestamps
    end
  end
end
