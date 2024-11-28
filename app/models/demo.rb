class Demo < ApplicationRecord

  validates :name,  presence: true
  validates :title, acceptance: {accept: ['TRUE', 'accepted']}

  before_validation :ensure_name_has_value

  private
    def ensure_name_has_value
      if name.blank?
        self.name = title
      end
    end
end
