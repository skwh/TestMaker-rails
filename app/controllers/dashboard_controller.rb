class DashboardController < ApplicationController
  def dashboard
    @exams = Exam.all
    @questions = Question.all.limit(5)
    @e_count = Exam.all.count
    @q_count = Question.all.count
  end
end
