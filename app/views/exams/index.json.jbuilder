json.array!(@exams) do |exam|
  json.extract! exam, :id, :title, :level, :topic
  json.url exam_url(exam, format: :json)
end
