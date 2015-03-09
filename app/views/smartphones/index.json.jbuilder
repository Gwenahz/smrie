json.array!(@smartphones) do |smartphone|
  json.extract! smartphone, :id, :marque, :modele, :couleur
  json.url smartphone_url(smartphone, format: :json)
end
