class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    
    def index
        users = User.all
        render json: users
    end

    def profile
        render json: { user: UserSerializer.new(@user) }, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        user = User.find(params[:id])
        user.update(params.require(:name)).permit!
        render json: { user: UserSerializer.new(@user) }
    end

    def destroy
        # user = User.find(params[:id])
        @user.destroy
        render json: { success: 'User deleted successfully' }
    end

    private

    def user_params
        params.require(:user).permit(:id, :name, :password, :bio)
    end

end