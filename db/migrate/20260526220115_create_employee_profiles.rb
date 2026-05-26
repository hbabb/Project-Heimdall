class CreateEmployeeProfiles < ActiveRecord::Migration[8.1]
  def change
    create_table :employee_profiles do |t|
      t.references :user, null: false, foreign_key: true, index: { unique: true }
      t.references :department, null: false, foreign_key: true
      t.references :office, null: false, foreign_key: true

      t.string :title, null: false
      t.string :mobile_phone, null: false
      t.boolean :active, null: false, default: false

      t.timestamps
    end
  end
end
