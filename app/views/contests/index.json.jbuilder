json.array!(@contests) do |contest|
  json.extract! contest, :id, :name, :client_id, :participant_id, :quiz, :start_date, :end_date
  json.url contest_url(contest, format: :json)
end
