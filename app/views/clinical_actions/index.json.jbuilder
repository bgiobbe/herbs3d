json.array!(@clinical_actions) do |clinical_action|
  json.extract! clinical_action, :id, :name, :notes
  json.url clinical_action_url(clinical_action, format: :json)
end
