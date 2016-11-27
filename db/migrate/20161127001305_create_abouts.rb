class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :name
      t.text :portfolio
      t.string :website
      t.string :email
      t.text :signature
      t.string :contact
      t.text :hobby

      t.timestamps null: false
    end
  end
end
