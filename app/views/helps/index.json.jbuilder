json.array!(@helps) do |help|
  json.extract! help, :id, :nom, :prenom, :cp, :modele, :panne, :mail, :numtel
  json.url help_url(help, format: :json)
end
