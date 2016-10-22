class AddAttachmentThumbnailToBlogs < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :blogs, :thumbnail
  end
end
