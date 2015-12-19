module TopicsHelper
  def exams_for_topic(topic)
    Exam.where(topic:topic.name).count
  end

  def questions_for_topic(topic)
    Question.where(topic:topic.name).count
  end
end
