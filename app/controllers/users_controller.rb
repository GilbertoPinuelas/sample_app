class UsersController < ApplicationController
  attr_accessor :name, :email

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # more secure way
    @user = User.new(user_params)
    #@user = User.new(params[:user])    # Not the final implementation!
    # is equivalent to:
    # @user = User.new(name: "Foo Bar", email: "foo@invalid",
    #             password: "foo", password_confirmation: "bar")
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to Books page"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
