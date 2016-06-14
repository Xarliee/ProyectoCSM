json.array!(@muni_products) do |muni_product|
  json.extract! muni_product, :id
  json.url muni_product_url(muni_product, format: :json)
end
