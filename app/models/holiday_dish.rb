class HolidayDish < ApplicationRecord
    belongs_to :dish
    belongs_to :holiday

    validates :holiday_id, uniqueness: { scope: [:dish_id] }
end
