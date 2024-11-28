class AddSubmissionDateToStudentProjects < ActiveRecord::Migration[7.2]
  def change
    add_column :student_projects, :submission_date, :date
  end
end
