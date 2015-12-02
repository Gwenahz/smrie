class AddNearToSecteurs < ActiveRecord::Migration
  def change
    add_column :secteurs, :near, :boolean
  end
end
