class AddApproveStatusToShops < ActiveRecord::Migration[5.1]
  def change
    add_column :shops, :approve, :boolean
  end
end
