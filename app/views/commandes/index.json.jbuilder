json.array!(@commandes) do |commande|
  json.extract! commande, :id, :modele, :panne, :prix
  json.url commande_url(commande, format: :json)
end
