
FactoryGirl.define do
  factory :stance, :class => Refinery::Stances::Stance do
    sequence(:japanese_name) { |n| "refinery#{n}" }
  end
end

