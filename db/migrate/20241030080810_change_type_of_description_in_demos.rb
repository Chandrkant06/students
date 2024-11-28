class ChangeTypeOfDescriptionInDemos < ActiveRecord::Migration[7.2]
#   def change
#     reversible do |dir|
#       dir.up do
#         change_column :demos, :description, :text
#       end
#       dir.down do
#     change_column :demos, :description, :string
#       end
#     end
#   end
# end

  def up
    change_column :demos, :description, :text
  end

  def down
    change_column :demos, :description, :string
  end
end