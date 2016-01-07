class CreateCommandes < ActiveRecord::Migration
  def change
    create_table :commandes do |t|
      t.string :modele
      t.string :panne
      t.decimal :prix

      t.timestamps
    end
  end
end
