class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.string :email
      t.references :blog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
