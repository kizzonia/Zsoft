class Project < ActiveRecord::Base
  has_attached_file :thumbnail, styles: { medium: "1000x1000", medium: "600x500" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
end
