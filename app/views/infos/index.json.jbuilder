json.array!(@infos) do |info|
  json.extract! info, :id, :nom, :prenom, :adresse, :cp, :ville
  json.url info_url(info, format: :json)
end
