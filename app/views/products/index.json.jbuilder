json.array!(@products) do |product|
  json.extract! product, :id, :title, :price, :stock, :process, :description, :craftsman_id
  json.url product_url(product, format: :json)
end
