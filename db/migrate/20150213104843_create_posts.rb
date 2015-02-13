class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :posts
  end
end
