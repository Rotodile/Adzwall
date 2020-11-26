Cloudinary.config do |config|
    config.cloud_name = ENV["cloudinary_name"]
    config.api_key = ENV["cloudinary_api_key"]
    config.api_secret = ENV["cloudinary_api_secret"]
    config.enhance_image_tag = true
    config.static_file_support = true  
  end
  