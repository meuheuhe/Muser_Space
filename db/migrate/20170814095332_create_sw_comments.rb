class CreateSwComments < ActiveRecord::Migration
  def change
    create_table :sw_comments do |t|
      t.string :content
      t.string :user_name
      t.integer :user_id
      t.string :avatar

      t.integer :songwriting_id
      
      t.timestamps null: false
    end
  end
end
