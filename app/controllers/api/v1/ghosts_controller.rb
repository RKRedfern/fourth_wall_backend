class Api::V1::GhostsController < ApplicationController

    def show
        ghost = Ghost.all
        render json: GhostSerializer.new()
    end

    def index
        
        ghosts = Ghost.all
        render json: GhostSerializer.new(ghosts)
    end

    def create
        ghost = Ghost.new(ghost_params)
        if Ghost.save
            render json: GhostSerializer.new(ghost), status: :accepted
        else
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def ghost_params
        params.require(:ghost).permit(:name, :kind, :notes)
    end

end
