class KatasStance < ActiveRecord::Base
  belongs_to :kata, class_name: Refinery::Katas::Kata
  belongs_to :stance, class_name: Refinery::Stances::Stance
end
