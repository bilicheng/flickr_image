# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
FlickrImage::Application.initialize!

$my_logger = Logger.new("#{Rails.root}/log/my.log") 
