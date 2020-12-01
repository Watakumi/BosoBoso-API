class CreatePostTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :post_times do |t|
      t.references :post, null: false, foreign_key: true
      t.integer :extended_time, null:false
      
      t.timestamps
    end
  end
end
