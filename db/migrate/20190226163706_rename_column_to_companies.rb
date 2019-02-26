class RenameColumnToCompanies < ActiveRecord::Migration[5.2]
  def change
    rename_column :companies, :type, :category
    rename_column :events, :type, :category
  end
end
