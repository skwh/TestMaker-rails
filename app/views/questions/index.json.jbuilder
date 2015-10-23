json.array!(@questions) do |question|
  json.extract! question, :id, :text, :type, :level, :test_id
  json.url question_url(question, format: :json)
end
