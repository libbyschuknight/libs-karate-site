# This migration comes from refinery_katas (originally 1)
class CreateKatasKatas < ActiveRecord::Migration

  def up
    create_table :refinery_katas do |t|
      t.string :title
      t.text :meaning
      t.text :interpretation
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-katas"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/katas/katas"})
    end

    drop_table :refinery_katas

  end

end
