class AddPromocodeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :promocode, :string
  end
end
