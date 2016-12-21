class UsersController < ApplicationController
	def index
		@user = User.find(session[:user_id])
		@like = @user.likes
	end

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to '/users/<%=user.id%>'
		else
			flash[:errors] = user.errors.full_messages
			redirect_to '/sessions/new'	
		end
	end
  def show
    @user = User.find(params[:id])
  end
  

  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end



end
