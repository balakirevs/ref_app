module Refinery
  module NewsItems
    class NewsItem < Refinery::Core::BaseModel
      self.table_name = 'refinery_news_items'

      attr_accessible :name, :news_date, :photo_id, :description, :position

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
