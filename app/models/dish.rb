class Dish < ApplicationRecord
    has_many :holiday_dishes
    has_many :holidays, through: :holiday_dishes

    validates :name, :ingredients presence: true

    def dish_details
        "Ingredients: #{self.ingredients} Rating: #{self.rating}"
    end
end
