class CreateGradesGrades < ActiveRecord::Migration

  def up
    create_table :refinery_grades do |t|
      t.string :title
      t.boolean :dan
      t.boolean :kyu
      t.integer :level
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-grades"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/grades/grades"})
    end

    drop_table :refinery_grades

  end

end
