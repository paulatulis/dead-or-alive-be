class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end
    
    def show
        @user = User.find(params[:id])
        render json: @user
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
          @token = encode_token({ user_id: @user.id })
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: 
            @user.errors.full_messages 
            # "Failed to Create User"
            }, status: not_acceptable
          #error: 'failed to create user'
        end
    end
    
    def update
      # byebug
        @user = User.find(params[:id])
        if @user.update(zombie: user_params[:zombie])
          render json: @user
        else
          render json: {error: @user.errors.full_messages}
        end
    end
    
    def delete
        @user = User.find_by(params[:id])
        @user.destroy
    end
    
    private
      
    def user_params
        params.require(:user).permit(:username, :password, :img_url, :zombie, :location_id, :id)
    end
end
