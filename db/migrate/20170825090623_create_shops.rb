class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :city
      t.string :area
      t.integer :property_id
      t.string :property_type
      t.timestamps
    end
    add_index :shops,[:property_id , :property_type]
  end
end
