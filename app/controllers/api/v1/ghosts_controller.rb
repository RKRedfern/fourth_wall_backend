class GhostsController < ApplicationController

    def index
        ghosts = Ghosts.all 
        render json: GhostsSerializer.new(ghosts)
    end

    def create
        ghost = Ghosts.new(ghost_params)
        if Ghosts.save
            render json: GhostsSerializer.new(ghost), status: :accepted
        else
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def ghost_params
        params.require(:ghost).permit(:name, :kind, :notes)
    end

end
