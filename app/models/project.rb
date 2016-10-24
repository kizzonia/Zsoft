class Project < ActiveRecord::Base
  has_attached_file :thumbnail, styles: { large: "1200x1000#", medium: "600x500#" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

    do_not_validate_attachment_file_type :thumbnail
end
