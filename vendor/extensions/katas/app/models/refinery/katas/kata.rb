module Refinery
  module Katas
    class Kata < Refinery::Core::BaseModel
      self.table_name = 'refinery_katas'

      has_and_belongs_to_many :stances, class_name: "Refinery::Stances::Stance"

      validates :title, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end·
  end
end
·
