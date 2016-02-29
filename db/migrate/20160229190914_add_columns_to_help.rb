class AddColumnsToHelp < ActiveRecord::Migration
  def change
    add_column :helps, :adresse, :string
    add_column :helps, :ville, :string
    add_column :helps, :date, :string
    add_column :helps, :heure, :string
  end
end
