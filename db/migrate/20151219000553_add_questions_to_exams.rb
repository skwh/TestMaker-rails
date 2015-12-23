class AddQuestionsToExams < ActiveRecord::Migration
  def change
    add_column :exams, :question_number, :integer, default:0
  end
end
