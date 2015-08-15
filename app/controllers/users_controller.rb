class UsersController < ApplicationController
  # get
  def signup
    # render a view and let a user register
    # (i.e., render a form)

  end

  # post
  def confirmation
    puts '---------movies#confirmation----------'
    puts user_params
    puts '---------movies#confirmation----------'
    # post request that handles registration/says thanks
  end

private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
