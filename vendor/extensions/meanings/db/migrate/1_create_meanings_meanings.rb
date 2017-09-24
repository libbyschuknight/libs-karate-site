class CreateMeaningsMeanings < ActiveRecord::Migration

  def up
    create_table :refinery_meanings do |t|
      t.string :japanese_name
      t.string :english_name
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-meanings"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/meanings/meanings"})
    end

    drop_table :refinery_meanings

  end

end
