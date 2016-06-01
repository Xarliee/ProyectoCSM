json.array!(@muni_pages) do |muni_page|
  json.extract! muni_page, :id
  json.url muni_page_url(muni_page, format: :json)
end
