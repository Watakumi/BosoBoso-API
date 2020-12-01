class CreateExtendedTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :extended_times do |t|
      t.references :post, null: false, foreign_key: true
      t.integer :count, null:false
      
      t.timestamps
    end
  end
end
