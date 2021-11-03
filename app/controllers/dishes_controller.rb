class DishesController < ApplicationController

    def index
        render json: Dish.all
    end

    def show
        dish = Dish.find(params[:id])
        render json: dish
    end

    def create
        dish = Dish.new(dish_params)
        if dish.save
            render json: dish, status: :created
        else 
            render json: { errors: dish.errors }, status: :unprocessable_entity
        end
    end

    def update
        dish = Dish.find(params[:id])
        if dish
            dish.update(dish_params)
            render json: dish
        else 
            render json: { error: "Dish not found" }, status: :not_found
        end

    end

    def destroy
        dish = Dish.find(params[:id])
        if dish
            dish.destroy
            head :no_content
        else
            render json: { error: "Dish not found" }, status: :not_found
        end
    end

    private

    def dish_params
        params.permit(:name, :ingredients, :rating)
    end

end
