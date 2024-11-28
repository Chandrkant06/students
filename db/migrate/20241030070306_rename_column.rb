class RenameColumn < ActiveRecord::Migration[7.2]
  def change
    rename_column :students, :dob, :date_of_birth
  end
end
