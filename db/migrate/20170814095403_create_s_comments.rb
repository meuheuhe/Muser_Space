class CreateSComments < ActiveRecord::Migration
  def change
    create_table :s_comments do |t|
      t.string :content
      t.string :user_name
      t.integer :user_id
      t.string :avatar
      
      t.integer :show_id
      t.timestamps null: false
    end
  end
end
  