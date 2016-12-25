module Kms
  module Seo
    class Engine < ::Rails::Engine
      engine_name 'kms_seo'
      isolate_namespace Kms::Seo
      config.autoload_paths += Dir["#{config.root}/lib/**/"]
      config.to_prepare do
        Dir.glob(File.join(File.dirname(__FILE__), "../../../app/**/*_decorator*.rb")) do |c|
          require_dependency(c)
        end
      end
    end
  end
end
