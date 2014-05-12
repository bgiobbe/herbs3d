json.array!(@affinities) do |affinity|
  json.extract! affinity, :id, :name, :notes
  json.url affinity_url(affinity, format: :json)
end
