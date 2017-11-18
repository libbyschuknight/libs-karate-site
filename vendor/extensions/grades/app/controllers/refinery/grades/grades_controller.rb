module Refinery
  module Grades
    class GradesController < ::ApplicationController

      before_action :find_all_grades
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @grade in the line below:
        present(@page)
      end

      def show
        @grade = Grade.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @grade in the line below:
        present(@page)
      end

    protected

      def find_all_grades
        @grades = Grade.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/grades").first
      end

    end
  end
end
