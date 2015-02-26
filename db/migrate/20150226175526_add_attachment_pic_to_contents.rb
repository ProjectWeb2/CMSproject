class AddAttachmentPicToContents < ActiveRecord::Migration
  def self.up
    change_table :contents do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :contents, :pic
  end
end
