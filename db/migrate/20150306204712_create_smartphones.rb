class CreateSmartphones < ActiveRecord::Migration
  def change
    create_table :smartphones do |t|
      t.string :marque
      t.string :modele
      t.string :couleur

      t.timestamps
    end
  end
end
