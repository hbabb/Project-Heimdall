class RemoveDepartmentAndOfficeFromUsers < ActiveRecord::Migration[8.1]
  def change
    remove_reference :users, :department, foreign_key: true
    remove_reference :users, :office, foreign_key: true
  end
end
