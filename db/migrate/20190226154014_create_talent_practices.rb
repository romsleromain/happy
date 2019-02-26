class CreateTalentPractices < ActiveRecord::Migration[5.2]
  def change
    create_table :talent_practices do |t|
      t.references :talent_value, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
