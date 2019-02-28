class AddTeampictureToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :teampicture, :string
  end
end
