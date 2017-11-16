module Refinery
  module People
    module Admin
      class PeopleController < ::Refinery::AdminController

        before_action :find_all_grades, :except => [:show, :destroy]


        crudify :'refinery/people/person',
                :title_attribute => 'first_name'

        private

        # Only allow a trusted parameter "white list" through.
        def person_params
          params.require(:person).permit(:first_name, :last_name, :photo_id, :dojo, :grade_id)
        end

        def find_all_grades
          @grades = Refinery::People::Grade.all
        end
      end
    end
  end
end
