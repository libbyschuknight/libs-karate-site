module Refinery
  module Grades
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Grades

      engine_name :refinery_grades

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "grades"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.grades_admin_grades_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Grades)
      end
    end
  end
end
