class AddColumnsToHelps < ActiveRecord::Migration
  def change
    add_column :helps, :compladresse, :string
    add_column :helps, :entreprise, :string
    add_column :helps, :typeform, :string
    add_column :helps, :commentaire, :string
    add_column :helps, :idstock, :integer
    add_column :helps, :prix, :integer
    add_column :helps, :promocode, :string
  end
end
