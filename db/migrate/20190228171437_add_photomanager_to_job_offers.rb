class AddPhotomanagerToJobOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :job_offers, :photomanager, :string
  end
end
