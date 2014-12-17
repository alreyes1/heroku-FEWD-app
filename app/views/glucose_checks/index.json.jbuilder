json.array!(@glucose_checks) do |glucose_check|
  json.extract! glucose_check, :id, :glucose
  json.url glucose_check_url(glucose_check, format: :json)
end
