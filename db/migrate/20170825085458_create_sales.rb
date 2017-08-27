class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :contact
      t.references :moderator
      t.timestamps
    end
  end
end
