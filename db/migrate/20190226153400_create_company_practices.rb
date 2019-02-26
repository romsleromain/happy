class CreateCompanyPractices < ActiveRecord::Migration[5.2]
  def change
    create_table :company_practices do |t|
      t.references :company_value, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
