class Api::V1::GhostsController < ApplicationController
    skip_before_action :authorized
    before_action :set_user
    
    def create
        @ghost = @user.ghosts.create(ghost_params)
        if @ghost.save
            render json: GhostSerializer.new(@ghost), status: :accepted
        else
            render json: {error: 'Error Adding Ghost'}
        end
    end

    def set_user
        @user = User.find_by(params[:id])
    end

    private

    def ghost_params
        params.require(:ghost).permit(:name, :kind, :notes)
    end

end
