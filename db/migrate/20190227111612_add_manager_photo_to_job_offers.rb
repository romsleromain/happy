class AddManagerPhotoToJobOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :job_offers, :manager_photo, :string
  end
end
