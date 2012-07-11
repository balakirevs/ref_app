Refinery::PagesController.class_eval do
  
    before_filter :find_news_items, :find_indices, :only => [:home]

    def find_news_items
        @news_items = ::Refinery::NewsItems::NewsItem.all
    end

    def find_indices
        @indices = ::Refinery::Indices::Index.all
    end
  
    private :find_news_items, :find_indices
end    