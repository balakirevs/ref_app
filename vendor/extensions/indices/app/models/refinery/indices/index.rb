module Refinery
  module Indices
    class Index < Refinery::Core::BaseModel
      self.table_name = 'refinery_indices'

      attr_accessible :title, :description, :position

      acts_as_indexed :fields => [:title, :description]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
