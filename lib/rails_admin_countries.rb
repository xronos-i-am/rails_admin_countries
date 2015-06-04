require "rails_admin_countries/version"

require "countries"

require "rails_admin_countries/engine"
require "rails_admin_countries/mongoid" if defined?(Mongoid)
require "rails_admin_countries/country_field"

module RailsAdminCountries
  # Your code goes here...
end
