Rails.application.configure do
  
  config.action_mailer.delivery_method = :smtp
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.serve_static_files = ENV["RAILS_SERVE_STATIC_FILES"].present?
  config.assets.js_compressor = :uglifier
  config.assets.compile = false
  config.assets.digest = true
  config.log_level = :debug
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false
  config.action_mailer.default_url_options = { host: "postil9.herokuapp.com"}
  config.paperclip_defaults = {
  storage: :s3,
  s3_credentials: {
    bucket: ENV.fetch("postil"),
    access_key_id: ENV.fetch("AKIAJCRESIOFWV3QQGLA"),
    secret_access_key: ENV.fetch("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"),
    s3_region: ENV.fetch("public-read"),
  }
 }

  Paperclip::Attachment.default_options[:s3_host_name] = "s3-us-west-2.amazonaws.com"
  
end
