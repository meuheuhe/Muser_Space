class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
      t.string :content
      t.integer :songwriting_id
      t.integer :show_id
      t.integer :cover_id


      t.timestamps null: false
    end
  end
end
