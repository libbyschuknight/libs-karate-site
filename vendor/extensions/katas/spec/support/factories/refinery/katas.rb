
FactoryGirl.define do
  factory :kata, :class => Refinery::Katas::Kata do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

