class AddCategoryIdToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :category_id, :integar
  end
end
