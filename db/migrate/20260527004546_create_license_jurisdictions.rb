class CreateLicenseJurisdictions < ActiveRecord::Migration[8.1]
  def change
    create_table :license_jurisdictions do |t|
      t.string :name, null: false
      t.string :jurisdiction_type, null: false
      t.string :state, null: false
      t.boolean :business_license_required, null: false, default: false
      t.text :notes
      t.boolean :active, null: false, default: true

      t.timestamps
    end

    add_index :license_jurisdictions,
              [ :name, :state, :jurisdiction_type ],
              unique: true,
              name: "index_license_jurisdictions_on_identity"
  end
end
