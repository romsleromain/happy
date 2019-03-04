class AddLatestNewsSumAndMediaToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :latestnews_summary, :string
    add_column :companies, :latestnews_media, :string
  end
end
