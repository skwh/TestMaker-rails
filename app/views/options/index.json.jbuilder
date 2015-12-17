json.array!(@options) do |option|
  json.extract! option, :id, :text, :question_id
  json.url option_url(option, format: :json)
end
