class Api::V1::HousesController < ApplicationController

    def index
        houses = House.all 
        render json: HouseSerializer.new(houses)
    end

    def create
        houses = House.new(houses_params)
        if House.save
            render json: HouseSerializer.new(houses), status: :accepted
        else
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def houses_params
        params.require(:houses).permit(:location, :kind, :notes)
    end
    
end



