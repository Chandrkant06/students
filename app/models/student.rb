class Student < ApplicationRecord
   has_many :blogs
   has_and_belongs_to_many :courses
   has_many :student_projects


   has_many :projects, through: :student_projects
   validate :contact_information, on: :contact_info
   validate :personal_information, on: :personal_info
   validates :first_name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters allows"}
   # validates :first_name, :last_name, :email, presence: true
   # validates :email, confirmation: true
   validates :email_confirmation, presence: true, if: :email_changed?
   after_create :display_student_age




   def display_student_age
      if self.date_of_birth.present?
         age = Date.today.year - self.date_of_birth.year
         puts "=========Age of Student is #{age}========="
      else
         puts "======Age can not be calculated without date_oh_birth========"
      end
   end



   # before_create :display_greetings

   # def display_greetings
   #    puts 'Hello, you executed before action callback!'   
   # end
  

   def contact_information
      errors.add(:base, "Email must be present") if email.blank?
      errors.add(:base, "Phone number must be present") if contact.blank?
   end

   def personal_information
      errors.add(:base, "First Name must be present") if first_name.blank?
      error.add(:base, "Last Name must be present") if last_name.blank?
   end



end
