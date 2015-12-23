class Exam < ActiveRecord::Base
  has_many :questions
  accepts_nested_attributes_for :questions,
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['body'].blank? }
  before_save :count_questions

  def count_questions
    self.question_number = self.questions.count
  end
end
