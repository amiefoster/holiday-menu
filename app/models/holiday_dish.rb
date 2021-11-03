class HolidayDish < ApplicationRecord
    belongs_to :dish
    belongs_to :holiday

    validates :dish_id, uniqueness: { scope: [:holiday_id] }
end
