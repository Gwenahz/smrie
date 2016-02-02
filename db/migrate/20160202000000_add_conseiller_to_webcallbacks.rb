class AddConseillerToWebcallbacks < ActiveRecord::Migration
  def change
    add_column :webcallbacks, :conseiller, :string
  end
end
