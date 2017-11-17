module Refinery
  module People
    class Grade < Refinery::Core::BaseModel
      has_many :people

      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      # def title
      #   "Override def title in vendor/extensions/people/app/models/refinery/people/grade.rb"
      # end

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end