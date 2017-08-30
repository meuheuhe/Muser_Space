CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"], #here                       # required
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"], #here                       # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = ENV["AWS_BUCKET_NAME"]                          # required
  config.fog_public     = false                                        # optional, defaults to true
end
