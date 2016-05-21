json.array!(@couleurs) do |couleur|
  json.extract! couleur, :id, :couleur, :smartphone, :code
  json.url couleur_url(couleur, format: :json)
end
