class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :id_smartphone
      t.integer :id_panne
      t.decimal :prix
      t.integer :stock
      t.string :couleur

      t.timestamps
    end
  end
end
