# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Fenrirmongo::Application.initialize!

require "carrierwave_cloudfiles"