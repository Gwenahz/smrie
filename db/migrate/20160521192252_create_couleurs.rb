class CreateCouleurs < ActiveRecord::Migration
  def change
    create_table :couleurs do |t|
      t.string :couleur
      t.integer :smartphone
      t.string :code

      t.timestamps
    end
  end
end
