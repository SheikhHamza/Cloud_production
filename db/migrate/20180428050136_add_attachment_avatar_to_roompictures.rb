class AddAttachmentAvatarToRoompictures < ActiveRecord::Migration[5.1]
  def self.up
    change_table :roompictures do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :roompictures, :avatar
  end
end
