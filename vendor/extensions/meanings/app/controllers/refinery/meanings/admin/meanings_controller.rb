module Refinery
  module Meanings
    module Admin
      class MeaningsController < ::Refinery::AdminController

        crudify :'refinery/meanings/meaning',
                :title_attribute => 'japanese_name'

        private

        # Only allow a trusted parameter "white list" through.
        def meaning_params
          params.require(:meaning).permit(:japanese_name, :english_name, :description)
        end
      end
    end
  end
end
