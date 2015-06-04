require 'rails_admin/adapters/mongoid'
begin
  require 'rails_admin/adapters/mongoid/property'
rescue Exception => e
end

module RailsAdmin
  module Adapters
    module Mongoid
      class Property
        alias_method :type_without_country_field, :type
        def type
          if property.type.to_s == 'Country' || property.type.class.name == 'Country'
            :country_field
          else
            type_without_country_field
          end
        end
      end
    end
  end
end
