json.array!(@foundational_actions) do |foundational_action|
  json.extract! foundational_action, :id, :name, :notes
  json.url foundational_action_url(foundational_action, format: :json)
end
