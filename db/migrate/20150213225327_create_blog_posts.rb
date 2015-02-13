class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :blog_post
      t.string :blog_title
      t.datetime :date
      t.string :emotion

      t.timestamps null: false
    end
  end
end
