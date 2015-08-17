class AddIdphonesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :idphones, :string
  end
end
