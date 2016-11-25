Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.action_mailer.default_url_options = { :host => 'fcoders.herokuapp.com' }
ActionMailer::Base.smtp_settings = {
  :address        => "smtp.sendgrid.net",
  :port           => "25",
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => ENV['SENDGRID_DOMAIN']
}
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass
  config.assets.digest = true
  config.log_level = :debug


    # Compress JavaScripts and CSS.

    config.assets.compile = false

    config.assets.digest = true
    config.assets.precompile =  ['*.js']
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif *.svg *.eot *.ttf)
    config.log_level = :debug


    config.i18n.fallbacks = true

    # Send deprecation notices to registered listeners.
    config.active_support.deprecation = :notify

    # Use default logging formatter so that PID and timestamp are not suppressed.
    config.log_formatter = ::Logger::Formatter.new

    # Do not dump schema after migrations.
    config.active_record.dump_schema_after_migration = false


    config.paperclip_defaults = {
      storage: :s3,
      s3_credentials: {
        bucket: ENV.fetch('S3_BUCKET_NAME'),
        access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
        secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
        s3_region: ENV.fetch('AWS_REGION'),
      }
    }
end
