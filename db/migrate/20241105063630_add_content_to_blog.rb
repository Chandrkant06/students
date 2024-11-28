class AddContentToBlog < ActiveRecord::Migration[7.2]
  def change
    add_column :blogs, :content, :text
  end
end
