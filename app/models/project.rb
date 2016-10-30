class Project < ActiveRecord::Base
  has_attached_file :thumbnail, styles: { large: "1200x1000#", medium: "600x500#" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
  :storage => :s3,
  :bucket => (Rails.env.development? ? S3_CONFIG["picszongo"] : ENV['picszongo']),
  :s3_credentials => {
    :access_key_id => (Rails.env.development? ? S3_CONFIG['AKIAI6K7KR36YLLYTVUA'] : ENV['AKIAI6K7KR36YLLYTVUA']),
    :secret_access_key => (Rails.env.development? ? S3_CONFIG['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'] : ENV['keT7LG4H/YNz7YXwLjS2jlsKT5cYECDtwNA480xR'])
  },
    validates_attachment :thumbnail
end
