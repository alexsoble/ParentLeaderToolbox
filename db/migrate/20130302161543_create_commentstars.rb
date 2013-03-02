class CreateCommentstars < ActiveRecord::Migration
  def change
    create_table :commentstars do |t|
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
