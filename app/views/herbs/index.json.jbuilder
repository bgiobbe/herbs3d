json.array!(@herbs) do |herb|
  json.extract! herb, :id, :common_name, :latin_name, :heat_cool, :relax_tone, :moisten_dry, :notes
  json.url herb_url(herb, format: :json)
end
