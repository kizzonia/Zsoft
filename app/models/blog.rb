class Blog < ActiveRecord::Base
  has_many :comments, dependent: :destroy
   belongs_to :category
   has_attached_file :thumbnail, styles: { large: "1200x1000", medium: "600x500" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
  Paperclip::Attachment.default_options[:s3_region] = 's3.amazonaws.com'
end
