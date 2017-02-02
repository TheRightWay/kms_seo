module Kms
  module Seo
    class Engine < ::Rails::Engine
      engine_name 'kms_seo'
      isolate_namespace Kms::Seo
      config.eager_load_paths += Dir["#{config.root}/lib/**/"]
      config.to_prepare do
        Dir.glob(File.join(File.dirname(__FILE__), "../../../app/**/*_decorator*.rb")) do |c|
          require_dependency(c)
        end
      end

      config.generators do |g|
        g.test_framework :rspec
      end
    end
  end
end
