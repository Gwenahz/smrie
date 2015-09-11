class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.string :nom
      t.string :prenom
      t.string :cp
      t.string :modele
      t.string :panne
      t.string :mail
      t.string :numtel

      t.timestamps
    end
  end
end
