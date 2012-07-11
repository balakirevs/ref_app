module Refinery
  module Indices
    module Admin
      class IndicesController < ::Refinery::AdminController

        crudify :'refinery/indices/index', :xhr_paging => true

      end
    end
  end
end
