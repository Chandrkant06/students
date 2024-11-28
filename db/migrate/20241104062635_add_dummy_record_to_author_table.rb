class AddDummyRecordToAuthorTable < ActiveRecord::Migration[7.2]
  def change
    reversible do |dir|
      dir.up do 
        10.times do |i|
          puts "Author Name #{i+1}"
          Author.create(
            name:"Author Name #{i+1}",
          )
        end
      end

      dir.down do
        10.times do |i|
          puts "Deleting Author Name #{i+1}"
          Author.find_by(name:"Author Name #{i+1}").destroy
        end
      end
    end
  end
end