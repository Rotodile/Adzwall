Cloudinary.config do |config|
    config.cloud_name = Figaro.env.cloudinary_name
    config.api_key = Figaro.env.cloudinary_api_key
    config.api_secret = Figaro.env.cloudinary_api_secret
    config.enhance_image_tag = true
    config.static_file_support = true  
  end
  
