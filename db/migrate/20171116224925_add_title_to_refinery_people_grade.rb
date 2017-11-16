class AddTitleToRefineryPeopleGrade < ActiveRecord::Migration
  def change
    add_column :refinery_people_grades, :title, :string
    add_column :refinery_people_grades, :kyu, :boolean
  end
end
