json.array!(@craftsmen) do |craftsman|
  json.extract! craftsman, :id, :name, :email, :region, :bio, :category, :comuna, :phone, :user_id, :age
  json.url craftsman_url(craftsman, format: :json)
end
