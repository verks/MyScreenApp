class AddAttachmentPhotoToScreenPics < ActiveRecord::Migration
  def self.up
    change_table :screen_pics do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :screen_pics, :photo
  end
end
