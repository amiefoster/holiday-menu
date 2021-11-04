class Holiday < ApplicationRecord
    has_many :holiday_dishes
    has_many :dishes, through: :holiday_dishes
    #holidayneeds to have month and name
    validates :month, :name, presence: true
    validates :name, uniqueness: true

    def holiday_details
        "#{self.name} is in #{self.month}"
    end
    
end
