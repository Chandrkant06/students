class RenameColumnOnAuthors < ActiveRecord::Migration[7.2]
  def change
    rename_column :authors, :dob, :date_of_birth
    rename_column :authors, :address, :permanent_address
  end
end
