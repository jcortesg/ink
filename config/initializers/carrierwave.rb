CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: "AKIAJ2MVGDN3HULW23YA",
    aws_secret_access_key: "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"
  }
  config.fog_directory = "isfamous"
end