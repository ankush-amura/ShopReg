
class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :message
      t.string :role
      t.references :shop
      t.references :comment,index: true ,null: true
      t.timestamps
    end
  end
end
