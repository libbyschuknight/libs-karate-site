module Refinery
  module Stances
    class Stance < Refinery::Core::BaseModel
      self.table_name = 'refinery_stances'

      has_and_belongs_to_many :katas, class_name: Refinery::Katas::Kata
      
      validates :japanese_name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
