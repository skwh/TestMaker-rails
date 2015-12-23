class AddFormattedBodyToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :formatted_body, :string, default:""
  end
end
