class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.boolean :published
      t.text :brief
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
