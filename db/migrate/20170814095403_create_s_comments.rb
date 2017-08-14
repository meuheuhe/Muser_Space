class CreateSComments < ActiveRecord::Migration
  def change
    create_table :s_comments do |t|
      t.string :content
      t.integer :user_id
      
      t.integer :show_id
      t.timestamps null: false
    end
  end
end
