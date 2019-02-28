class AddAdminToTalents < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :admin, :boolean, null: false, default: false
  end
end
