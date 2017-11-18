module Refinery
  module People
    module Admin
      class PeopleController < ::Refinery::AdminController

        crudify :'refinery/people/person',
                :title_attribute => 'first_name'

        private

        # Only allow a trusted parameter "white list" through.
        def person_params
          params.require(:person).permit(:first_name, :last_name, :photo_id, :dojo)
        end
      end
    end
  end
end
