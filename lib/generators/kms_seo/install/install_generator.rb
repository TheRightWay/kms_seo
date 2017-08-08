require 'rails/generators/base'
module KmsSeo
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../../../', __FILE__)

    def insert_engine_routes
      route %(
  mount Kms::Seo::Engine => '/kms'
      )
    end

    def insert_javascript
      append_file "app/assets/javascripts/application.js", "//= require kms_seo/application\n"
    end

    def remove_robots_txt
      remove_file 'public/robots.txt'
    end
  end
end
