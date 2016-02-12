class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :marque
      t.string :modele
      t.string :panne
      t.string :couleur
      t.decimal :prix
      t.date :date_reparation
      t.string :heure_reparation
      t.boolean :bureau
      t.string :entreprise
      t.text :adresse
      t.text :adresse2
      t.string :cp
      t.string :ville
      t.string :prenom
      t.string :nom
      t.string :numtel
      t.string :email
      t.string :code_reparation
      t.string :statut
      t.boolean :paye
      t.string :reparateur
      t.text :commentaire
      t.string :demande_id

      t.timestamps
    end
  end
end
