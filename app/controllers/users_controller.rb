class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end

  def index
  	@users = User.paginate(page: params[:page])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render 'show'
    else
      render 'edit'
    end
  end
  def edit
    @user = User.find(params[:id])
    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end

  private

  def user_params
    if params[:user]
      params.require(:user).permit(:name, :display_name, :email, :password, :password_confirmation, :sex, :birthday, :content, :zip_code)  # TODO miniize when update is working 
    end
  end
end