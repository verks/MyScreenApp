class AddAttachmentPictureToScreenPics < ActiveRecord::Migration
  def self.up
    change_table :screen_pics do |t|
      t.has_attached_file :picture
    end
  end

  def self.down
    drop_attached_file :screen_pics, :picture
  end
end
