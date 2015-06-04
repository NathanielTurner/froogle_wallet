class MainController < ApplicationController
  def show
    @user = User.find_by_id(params[:user])
  end
end
