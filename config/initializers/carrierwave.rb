if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage    = :aws
    config.aws_bucket = Rails.application.secrets.s3_bucket_name
    config.aws_credentials = {
      access_key_id:     Rails.application.secrets.aws_access_key_id,
      secret_access_key: Rails.application.secrets.aws_secret_access_key,
      region:            'us-west-2'
    }
  end
end
