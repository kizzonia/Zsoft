# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
 Rails.application.config.assets.precompile += %w( search.js )
 Rails.application.config.assets.precompile += %w( ckeditor/* )
 config.paperclip_defaults = {
   storage: :s3,
   s3_credentials: {
     bucket: ENV.fetch('picszongo'),
     access_key_id: ENV.fetch('AKIAI6K7KR36YLLYTVUA'),
     secret_access_key: ENV.fetch('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
'),
     s3_region: ENV.fetch('US_Standard'),
   }
 }
