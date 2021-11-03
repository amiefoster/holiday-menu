class Holiday < ApplicationRecord
    has_many :holiday_dishes
    has_many :dishes, through: :holiday_dishes

    def holiday_details
        "#{self.name} is in #{self.month}"
    end
    
end
