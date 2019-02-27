class AddIconeToValues < ActiveRecord::Migration[5.2]
  def change
    add_column :values, :icone, :string
  end
end
