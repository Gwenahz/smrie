class AddUserIdToDisponibilites < ActiveRecord::Migration
  def change
    add_column :disponibilites, :user_id, :integer
  end
end
