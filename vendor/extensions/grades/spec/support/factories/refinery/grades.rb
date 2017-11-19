
FactoryGirl.define do
  factory :grade, :class => Refinery::Grades::Grade do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

