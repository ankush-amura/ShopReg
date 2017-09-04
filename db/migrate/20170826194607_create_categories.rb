class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.references :category
      t.string :role
      t.timestamps
    end
  end
end
