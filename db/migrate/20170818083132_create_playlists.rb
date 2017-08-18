class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :album_pic
      t.string :music
      t.string :title
      t.belongs_to :user
      
      t.timestamps null: false
    end
  end
end
