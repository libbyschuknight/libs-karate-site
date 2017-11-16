module Refinery
  module People
    class Person < Refinery::Core::BaseModel
      self.table_name = 'refinery_people'


      validates :first_name, :presence => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      belongs_to :grade

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
