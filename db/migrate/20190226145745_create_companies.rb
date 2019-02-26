class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :type
      t.string :logo
      t.string :description

      t.timestamps
    end
  end
end
