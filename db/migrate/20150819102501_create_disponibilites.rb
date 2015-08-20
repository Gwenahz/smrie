class CreateDisponibilites < ActiveRecord::Migration
  def change
    create_table :disponibilites do |t|
      t.boolean :amlundi
      t.boolean :pmlundi
      t.boolean :slundi
      t.boolean :ammardi
      t.boolean :pmmardi
      t.boolean :smardi
      t.boolean :ammercredi
      t.boolean :pmmercredi
      t.boolean :smercredi
      t.boolean :amjeudi
      t.boolean :pmjeudi
      t.boolean :sjeudi
      t.boolean :amvendredi
      t.boolean :pmvendredi
      t.boolean :svendredi
      t.boolean :amsamedi
      t.boolean :pmsamedi
      t.boolean :ssamedi
      t.boolean :amdimanche
      t.boolean :pmdimanche
      t.boolean :sdimanche

      t.timestamps
    end
  end
end
