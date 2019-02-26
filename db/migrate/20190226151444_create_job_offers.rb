class CreateJobOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_offers do |t|
      t.string :description
      t.references :company, foreign_key: true
      t.references :position, foreign_key: true

      t.timestamps
    end
  end
end
