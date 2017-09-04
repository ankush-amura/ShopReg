class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.references :city
      t.references :area
      t.references :sale
      t.references :category
      t.timestamps
    end
    add_index :shops,[:area_id , :city_id, :sale_id]
  end
end
