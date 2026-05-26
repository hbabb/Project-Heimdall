class AddLocationToOffices < ActiveRecord::Migration[8.1]
  def change
    add_column :offices, :city, :string, null: false
    add_column :offices, :state, :string, null: false
  end
end
