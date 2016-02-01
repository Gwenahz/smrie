class CreateWebcallbacks < ActiveRecord::Migration
  def change
    create_table :webcallbacks do |t|
      t.string :numtel
      t.string :modele
      t.string :panne
      t.string :cp
      t.string :email
      t.boolean :sms

      t.timestamps
    end
  end
end
