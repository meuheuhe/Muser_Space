class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :show_pic
      t.string :show_mic
      
      t.string :title
      t.text :content
      t.string :teamname
      
      #계정
      t.integer :user_id
      t.string :user_email
      t.string :user_name
      
      t.integer :hits
      t.integer :likes_count

      t.timestamps null: false
    end
  end
end
