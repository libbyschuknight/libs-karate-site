module Refinery
  module Katas
    module Admin
      class KatasController < ::Refinery::AdminController

        crudify :'refinery/katas/kata'

        private

        # Only allow a trusted parameter "white list" through.
        def kata_params
          params.require(:kata).permit(:title, :meaning, :interpretation)
        end
      end
    end
  end
end
