module Refinery
  module Grades
    class Grade < Refinery::Core::BaseModel
      self.table_name = 'refinery_grades'

      validates :title, :presence => true, :uniqueness => true

      has_many :people, class_name: Refinery::People::Person

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
