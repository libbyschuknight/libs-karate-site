class AddGradeToRefineryPeople < ActiveRecord::Migration
  def change
    add_column :refinery_people, :grade_id, :integer
  end
end
