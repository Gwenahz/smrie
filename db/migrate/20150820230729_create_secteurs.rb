class CreateSecteurs < ActiveRecord::Migration
  def change
    create_table :secteurs do |t|
      t.string :ville
      t.integer :user_id

      t.timestamps
    end
  end
end
