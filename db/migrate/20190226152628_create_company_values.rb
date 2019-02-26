class CreateCompanyValues < ActiveRecord::Migration[5.2]
  def change
    create_table :company_values do |t|
      t.references :company, foreign_key: true
      t.references :value, foreign_key: true

      t.timestamps
    end
  end
end
