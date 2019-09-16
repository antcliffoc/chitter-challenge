require 'dm-migrations/migration_runner'

migration 1, :create_articles_table do
  up do
    create_table :articles do
      column :id,   Integer, :serial => true
      column :title, String
      column :content, Text
      column :published, Boolean, :default => false
      column :published_on, Date, :required => false
      column :likes, Integer, :default => 0
    end
  end

  down do
    drop_table :articles
  end
end

migrate_up!
