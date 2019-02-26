class AddColumnsToTalents < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :first_name, :string
    add_column :talents, :last_name, :string
    add_column :talents, :avatar, :string
    add_column :talents, :experience, :string
    add_column :talents, :url_linkedin, :string
    add_reference :talents, :position, foreign_key: true
  end
end
