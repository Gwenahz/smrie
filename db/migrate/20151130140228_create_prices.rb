class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :id_smartphone
      t.integer :id_panne
      t.decimal :prix

      t.timestamps
    end
  end
end
