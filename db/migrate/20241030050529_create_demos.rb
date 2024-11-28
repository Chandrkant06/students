class CreateDemos < ActiveRecord::Migration[7.2]
  def change
    create_table :demos do |t|
      t.string :title
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end