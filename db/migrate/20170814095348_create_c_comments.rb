class CreateCComments < ActiveRecord::Migration
  def change
    create_table :c_comments do |t|
      t.string :content
      t.integer :user_id
      
      t.integer :cover_id
      t.timestamps null: false
    end
  end
end
