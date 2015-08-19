class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :cp
      t.string :ville

      t.timestamps
    end
  end
end
