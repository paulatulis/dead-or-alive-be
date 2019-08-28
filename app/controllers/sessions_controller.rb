class SessionsController < ApplicationController
  def login
    @user = User.find_by(username: user_login_params[:username])

    
    if @user && @user.authenticate(user_login_params[:password])
      
      token = jwt_encode({ user_id: @user.id })
      render json: { token: token, user: UserSerializer.new(@user) }, status: :accepted
    else
      render json: { message: @user.errors.full_messages }, status: :unauthorized
    end
  end

  def initState
    @user = User.find(current_user.id)
    render json: @user, each_serializer: UserSerializer
end

  private

  def user_login_params
    params.require(:user).permit(:username, :password)
  end

end