module Refinery
  module People
    class Person < Refinery::Core::BaseModel
      self.table_name = 'refinery_people'

      validates :first_name, :presence => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      belongs_to :grade, class_name: Refinery::Grades::Grade


      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      def senpai_title
        "Senpai" if grade.senpai?
      end
    end
  end
end
