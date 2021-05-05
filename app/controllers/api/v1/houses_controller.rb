class Api::V1::HousesController < ApplicationController

    def index
        houses = Houses.all 
        render json: HousesSerializer.new(houses)
    end

    def create
        houses = Houses.new(houses_params)
        if Houses.save
            render json: HousesSerializer.new(houses), status: :accepted
        else
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def houses_params
        params.require(:houses).permit(:location, :kind, :notes)
    end
    
end



