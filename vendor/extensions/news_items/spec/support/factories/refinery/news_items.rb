
FactoryGirl.define do
  factory :news_item, :class => Refinery::NewsItems::NewsItem do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

