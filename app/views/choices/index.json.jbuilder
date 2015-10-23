json.array!(@choices) do |choice|
  json.extract! choice, :id, :text, :question_id
  json.url choice_url(choice, format: :json)
end
