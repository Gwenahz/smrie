json.array!(@secteurs) do |secteur|
  json.extract! secteur, :id, :ville, :user_id
  json.url secteur_url(secteur, format: :json)
end
