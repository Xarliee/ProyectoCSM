json.array!(@muni_craftsmen) do |muni_craftsman|
  json.extract! muni_craftsman, :id
  json.url muni_craftsman_url(muni_craftsman, format: :json)
end
