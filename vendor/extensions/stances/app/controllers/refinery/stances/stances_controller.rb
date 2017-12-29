module Refinery
  module Stances
    class StancesController < ::ApplicationController

      before_action :find_all_stances
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @stance in the line below:
        present(@page)
      end

      def show
        @stance = Stance.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @stance in the line below:
        present(@page)
      end

    protected

      def find_all_stances
        @stances = Stance.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/stances").first
      end

    end
  end
end
