Geocoder.configure(
  # Add the following to application.yml -> geocoder_key: "insert_key_here"
  :api_key      => ENV['geocoder_key'], # API key for geocoding service
  :use_https => true
)
