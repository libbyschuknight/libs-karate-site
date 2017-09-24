module Refinery
  module Meanings
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Meanings

      engine_name :refinery_meanings

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "meanings"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.meanings_admin_meanings_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Meanings)
      end
    end
  end
end
