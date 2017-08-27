class CreateModerators < ActiveRecord::Migration[5.1]
  def change
    create_table :moderators do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :contact
      t.references :superadmin
      t.timestamps
    end
  end
end
