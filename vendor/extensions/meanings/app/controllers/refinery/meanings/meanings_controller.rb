module Refinery
  module Meanings
    class MeaningsController < ::ApplicationController

      before_action :find_all_meanings
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @meaning in the line below:
        present(@page)
      end

      def show
        @meaning = Meaning.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @meaning in the line below:
        present(@page)
      end

    protected

      def find_all_meanings
        @meanings = Meaning.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/meanings").first
      end

    end
  end
end
