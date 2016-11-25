class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :serdescription
      t.string :otherSer
      t.text :otherSerdescription

      t.timestamps null: false
    end
  end
end
