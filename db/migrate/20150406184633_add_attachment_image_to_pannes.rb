class AddAttachmentImageToPannes < ActiveRecord::Migration
  def self.up
    change_table :pannes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pannes, :image
  end
end
