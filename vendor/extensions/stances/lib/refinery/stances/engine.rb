module Refinery
  module Stances
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Stances

      engine_name :refinery_stances

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "stances"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.stances_admin_stances_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Stances)
      end
    end
  end
end
