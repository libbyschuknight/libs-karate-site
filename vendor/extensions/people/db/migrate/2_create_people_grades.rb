class CreatePeopleGrades < ActiveRecord::Migration

  def up
    create_table :refinery_people_grades do |t|
      t.boolean :dan
      t.integer :level
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-people"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/people/grades"})
    end

    drop_table :refinery_people_grades

  end

end
