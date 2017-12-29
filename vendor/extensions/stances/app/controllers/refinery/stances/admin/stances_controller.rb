module Refinery
  module Stances
    module Admin
      class StancesController < ::Refinery::AdminController

        crudify :'refinery/stances/stance',
                :title_attribute => 'japanese_name'

        private

        # Only allow a trusted parameter "white list" through.
        def stance_params
          params.require(:stance).permit(:japanese_name, :english_name, :description, :photo_id)
        end
      end
    end
  end
end
