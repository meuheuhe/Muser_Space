class CreateCComments < ActiveRecord::Migration
  def change
    create_table :c_comments do |t|
      t.string :content
      t.string :user_name
      t.integer :user_id
      t.string :avatar
      
      t.integer :cover_id
      t.timestamps null: false
    end
  end
end
