class ApplicationDataController < ApplicationController
  def index
  end

  def new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def create
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end
end
