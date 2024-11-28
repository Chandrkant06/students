class RemoveAgeFromStudents < ActiveRecord::Migration[7.2]
  def change
    remove_column :students, :age
  end
end
