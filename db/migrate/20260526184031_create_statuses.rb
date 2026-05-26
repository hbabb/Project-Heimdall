class CreateStatuses < ActiveRecord::Migration[8.1]
  def change
    create_table :statuses do |t|
      t.integer :sort_order, null: false
      t.string :code, null: false
      t.string :name, null: false
      t.boolean :active, default: true, null: false
      t.timestamps
    end

    add_index :statuses, :code, unique: true
    add_index :statuses, :name, unique: true
    add_index :statuses, :sort_order, unique: true
  end
end
