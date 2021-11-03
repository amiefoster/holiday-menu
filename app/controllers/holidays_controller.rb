class HolidaysController < ApplicationController

    def index
        render json: Holiday.all
    
    end

    def show
        holiday = Holiday.find(params[:id])
        # render json: holiday
        render json: holiday
    end


end
