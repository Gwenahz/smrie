class AddNumtelToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :numtel, :string
  end
end
