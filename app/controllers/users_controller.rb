class UsersController < ApplicationController
  
  def index
    if admin_signed_in?
      @users = User.all
    else
      redirect_to :root
    end
  end
  
end