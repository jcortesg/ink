CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: "AKIAIZV2W47JRZI3I6FQ",
    aws_secret_access_key: "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"
  }
  config.fog_directory = "isfamous"
end
