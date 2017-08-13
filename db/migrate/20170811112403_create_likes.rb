class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      
      t.integer :user_id
      t.integer :songwriting_id
      t.integer :cover_id
      t.integer :show_id

      t.timestamps null: false
    end
  end
end
