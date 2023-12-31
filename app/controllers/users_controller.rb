class UsersController < ApplicationController

  def edit

  end

  def update
    binding.pry
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :encrypted_password, :height, :weight, :age, :sex, :password, :password_confirmation)
  end

end
