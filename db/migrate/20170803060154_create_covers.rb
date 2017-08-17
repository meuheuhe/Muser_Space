class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :cover_pic
      t.string :cover_mic
      
      t.string :title
      t.text :content
      t.string :original
      t.string :lyrics
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
