CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJIIWGYUMGH237PSA',
    :aws_secret_access_key  => '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'
  }
  
  config.cache_dir = "#{Rails.root}/tmp/uploads" #for heroku

  config.fog_directory  = 'sentwo' # required
end