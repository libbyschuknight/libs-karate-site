module Refinery
  module Katas
    module Admin
      class KatasController < ::Refinery::AdminController

        before_action :find_all_stances

        crudify :'refinery/katas/kata'

        def update
          @kata = Kata.find(params[:id])

          if @kata.update(kata_params)
            stance_params.each do |stance_id|
              KatasStance.create(kata_id: @kata.id, stance_id: stance_id)
            end

            flash[:notice] = "#{@kata.title} was successfully updated."
            redirect_to katas_admin_katas_path
          else
            render :edit
          end
        end

        protected

        def find_all_stances
          @stances = Refinery::Stances::Stance.all
        end

        private

        # Only allow a trusted parameter "white list" through.
        def kata_params
          params.require(:kata).permit(:title, :meaning, :interpretation)
        end

        def stance_params
          params.require(:stance_ids)
        end
      end
    end
  end
end
