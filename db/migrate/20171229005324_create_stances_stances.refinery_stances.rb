# This migration comes from refinery_stances (originally 1)
class CreateStancesStances < ActiveRecord::Migration

  def up
    create_table :refinery_stances do |t|
      t.string :japanese_name
      t.string :english_name
      t.text :description
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-stances"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/stances/stances"})
    end

    drop_table :refinery_stances

  end

end
