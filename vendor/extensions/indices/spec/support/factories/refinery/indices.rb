
FactoryGirl.define do
  factory :index, :class => Refinery::Indices::Index do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

