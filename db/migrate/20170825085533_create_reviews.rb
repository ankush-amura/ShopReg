
class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review
      t.references :shop
      t.timestamps
    end
  end
end
