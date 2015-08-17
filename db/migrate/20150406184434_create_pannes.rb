class CreatePannes < ActiveRecord::Migration
  def change
    create_table :pannes do |t|
      t.string :name

      t.timestamps
    end
  end
end
