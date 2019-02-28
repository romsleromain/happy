class RemoveManagerPhotoToJobOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_offers, :manager_photo
  end
end
