class AddConfirmMessageToStudents < ActiveRecord::Migration[7.2]
  def change
    add_column :students, :email_confirmation, :string
  end
end
