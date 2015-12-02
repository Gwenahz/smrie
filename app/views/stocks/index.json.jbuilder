json.array!(@stocks) do |stock|
  json.extract! stock, :id, :id_smartphone, :id_panne, :prix, :stock, :couleur
  json.url stock_url(stock, format: :json)
end
