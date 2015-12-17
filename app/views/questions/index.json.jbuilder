json.array!(@questions) do |question|
  json.extract! question, :id, :body, :topic, :level, :exam_id
  json.url question_url(question, format: :json)
end
