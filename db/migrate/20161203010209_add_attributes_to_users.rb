class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :position, :string
    add_column :users, :phone, :string
  end
end
