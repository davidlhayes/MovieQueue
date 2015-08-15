class UsersController < ApplicationController
  # get
  def signup
    # render a view and let a user register
    # (i.e., render a form)

  end

  # post
  def confirmation
    # puts '---------movies#confirmation----------'
    # puts user_params
    # puts '---------movies#confirmation----------'
    # post request that handles registration/says thanks

    @user = User.new(user_params)
    if @user.save
      # thanks! success!
      session[:user_id] = @user.id

      # Movies.where(:user_id => session[:user_id].to_i)

    else
      # error message
      @message = 'User account exists or passwords do not match.'
      render 'users/signup'
    end

  end

private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
