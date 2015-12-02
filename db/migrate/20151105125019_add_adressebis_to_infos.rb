class AddAdressebisToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :adressebis, :string
  end
end
