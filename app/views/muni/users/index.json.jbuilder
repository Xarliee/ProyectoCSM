json.array!(@muni_users) do |muni_user|
  json.extract! muni_user, :id
  json.url muni_user_url(muni_user, format: :json)
end
