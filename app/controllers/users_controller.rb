class UsersController < ApplicationController
  before_filter :require_logged_out, :only => [:new, :create]
  before_filter :require_logged_in, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Account Created"
      redirect_to account_url
    else
      render :action => :new
    end
  end
  
  def show
    @title = current_user.login
    @user = current_user
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account Updated"
      redirect_to account_url
    else
      render :action => :edit
    end
  end
end
