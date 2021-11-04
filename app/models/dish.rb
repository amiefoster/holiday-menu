class Dish < ApplicationRecord
    has_many :holiday_dishes
    has_many :holidays, through: :holiday_dishes
    validates :name, :ingredients, presence: true

    validate :number_of_ingredients

    def number_of_ingredients
       if self.ingredients.split(",").length < 2
        errors.add(:ingredients, message: "You need at least 2 ingredients to make a dish")
       end
    end

    def dish_details
        "Ingredients: #{self.ingredients} Rating: #{self.rating}"
    end
end
