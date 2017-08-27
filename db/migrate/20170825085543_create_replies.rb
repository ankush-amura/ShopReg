class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
     t.string :reply
     t.references :review
      t.timestamps
    end
  end
end
