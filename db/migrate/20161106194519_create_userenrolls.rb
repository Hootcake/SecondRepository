class CreateUserenrolls < ActiveRecord::Migration
  def change
    create_table :userenrolls do |t|
      t.integer :user_id
      t.integer :activity_id

      t.timestamps null: false
    end
  end
end
