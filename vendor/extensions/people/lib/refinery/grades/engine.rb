module Refinery
  module People
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::People

      engine_name :refinery_people

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "grades"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.people_admin_grades_path }
          plugin.pathname = root
          plugin.menu_match = %r{refinery/people/grades(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Grades)
      end
    end
  end
end
