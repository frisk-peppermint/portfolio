# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
require 'carrierwave/orm/activerecord'
config.time_zone = 'Tokyo'
config.active_record.default_timezone = :local