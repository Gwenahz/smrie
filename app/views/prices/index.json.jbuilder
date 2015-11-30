json.array!(@prices) do |price|
  json.extract! price, :id, :id_smartphone, :id_panne, :prix
  json.url price_url(price, format: :json)
end
