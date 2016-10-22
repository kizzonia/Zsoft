class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :sub_title
      t.text :body
      t.string :link

      t.timestamps null: false
    end
  end
end
