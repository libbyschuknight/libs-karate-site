module Refinery
  module People
    module Admin
      class GradesController < ::Refinery::AdminController

        crudify :'refinery/people/grade',
                :title_attribute => 'title'

        private

        # Only allow a trusted parameter "white list" through.
        def grade_params
          params.require(:grade).permit(:dan, :level, :title, :kyu)
        end
      end
    end
  end
end
