class CreateLike2s < ActiveRecord::Migration
  def change
    create_table :like2s do |t|
      t.integer :user_id
      t.integer :cover_id

      t.timestamps null: false
    end
  end
end
