class CreateReparations < ActiveRecord::Migration
  def change
    create_table :reparations do |t|
      t.string :id_user
      t.string :id_smartphone
      t.string :id_panne
      t.decimal :price

      t.timestamps
    end
  end
end
