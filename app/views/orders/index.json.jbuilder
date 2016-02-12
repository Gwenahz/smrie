json.array!(@orders) do |order|
  json.extract! order, :id, :marque, :modele, :panne, :couleur, :prix, :date_reparation, :heure_reparation, :bureau, :entreprise, :adresse, :adresse2, :cp, :ville, :prenom, :nom, :numtel, :email, :code_reparation, :statut, :paye, :reparateur, :commentaire, :demande_id
  json.url order_url(order, format: :json)
end
