class CreateBlogs < ActiveRecord::Migration[7.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :student_id

      t.timestamps
    end
  end
end
