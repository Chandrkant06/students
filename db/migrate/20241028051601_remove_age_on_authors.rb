class RemoveAgeOnAuthors < ActiveRecord::Migration[7.2]
  def change
    remove_column :authors, :age, :integer
  end
end
