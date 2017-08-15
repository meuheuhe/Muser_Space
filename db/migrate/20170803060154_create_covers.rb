class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :album_pic
      t.string :music
      
      t.string :title
      t.text :content
      t.string :genre
      
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
