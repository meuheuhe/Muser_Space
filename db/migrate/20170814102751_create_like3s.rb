class CreateLike3s < ActiveRecord::Migration
  def change
    create_table :like3s do |t|
      t.integer :user_id
      t.integer :show_id
      t.timestamps null: false
    end
  end
end
