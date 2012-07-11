# This migration comes from refinery_news_items (originally 1)
class CreateNewsItemsNewsItems < ActiveRecord::Migration

  def up
    create_table :refinery_news_items do |t|
      t.string :name
      t.date :news_date
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-news_items"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/news_items/news_items"})
    end

    drop_table :refinery_news_items

  end

end
