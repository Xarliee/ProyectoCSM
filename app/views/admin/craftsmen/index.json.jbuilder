json.array!(@admin_craftsmen) do |admin_craftsman|
  json.extract! admin_craftsman, :id
  json.url admin_craftsman_url(admin_craftsman, format: :json)
end
