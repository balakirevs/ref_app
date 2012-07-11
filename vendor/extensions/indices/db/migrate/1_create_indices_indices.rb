class CreateIndicesIndices < ActiveRecord::Migration

  def up
    create_table :refinery_indices do |t|
      t.string :title
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-indices"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/indices/indices"})
    end

    drop_table :refinery_indices

  end

end
