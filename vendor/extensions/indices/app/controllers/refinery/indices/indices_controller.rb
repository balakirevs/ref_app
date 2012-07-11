module Refinery
  module Indices
    class IndicesController < ::ApplicationController

      before_filter :find_all_indices
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @index in the line below:
        present(@page)
      end

      def show
        @index = Index.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @index in the line below:
        present(@page)
      end

    protected

      def find_all_indices
        @indices = Index.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/indices").first
      end

    end
  end
end
