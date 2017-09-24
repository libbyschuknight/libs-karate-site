
FactoryGirl.define do
  factory :meaning, :class => Refinery::Meanings::Meaning do
    sequence(:japanese_name) { |n| "refinery#{n}" }
  end
end

