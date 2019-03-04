class AddLatestNewsToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :latestnews, :string
  end
end
