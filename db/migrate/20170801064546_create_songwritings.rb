class CreateSongwritings < ActiveRecord::Migration
  def change
    create_table :songwritings do |t|
      t.string :album_pic
      t.string :music
      
      t.string :title
      t.text :content
      t.string :genre
      t.integer :ranking_point, default: "0"
      
      #계정
      t.integer :user_id
      t.string :user_email
      t.string :user_name
      
      t.timestamps null: false
    end
  end
end
