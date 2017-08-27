class CreateSuperadmins < ActiveRecord::Migration[5.1]
  def change
    create_table :superadmins do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :contact
      t.timestamps
    end
  end
end
