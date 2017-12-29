class AddManyToManyKatasAndStances < ActiveRecord::Migration
  def change
    change_table :refinery_stances do |t|
      t.belongs_to :kata, index: true
    end

    change_table :refinery_katas do |t|
      t.belongs_to :stance, index: true
    end
  end
end
