module Refinery
  module Katas
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Katas

      engine_name :refinery_katas

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "katas"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.katas_admin_katas_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Katas)
      end
    end
  end
end
