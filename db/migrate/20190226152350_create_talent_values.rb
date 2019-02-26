class CreateTalentValues < ActiveRecord::Migration[5.2]
  def change
    create_table :talent_values do |t|
      t.references :talent, foreign_key: true
      t.references :value, foreign_key: true

      t.timestamps
    end
  end
end
