module RailsAdmin
  module Config
    module Fields
      module Types
        class CountryField < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types.register(self)

          register_instance_option :partial do
            :form_country_select
          end

          register_instance_option :enum do
            Country.all { |data| [ data.last['translations']["#{I18n.locale}"], data.first ] }.sort_by { |i| i.first.to_s }
          end

          register_instance_option :pretty_value do
            value.blank? ? '-' : Country.search( value ).translations()["#{I18n.locale}"]
          end
        end
      end
    end
  end
end
