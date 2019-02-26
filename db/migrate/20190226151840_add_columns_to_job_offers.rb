class AddColumnsToJobOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :job_offers, :name, :string
  end
end
