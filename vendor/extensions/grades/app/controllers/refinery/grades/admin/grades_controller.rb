module Refinery
  module Grades
    module Admin
      class GradesController < ::Refinery::AdminController

        crudify :'refinery/grades/grade'

        private

        # Only allow a trusted parameter "white list" through.
        def grade_params
          params.require(:grade).permit(:title, :dan, :kyu, :level)
        end
      end
    end
  end
end
