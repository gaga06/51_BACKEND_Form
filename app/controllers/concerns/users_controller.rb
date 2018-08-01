class UsersController < ActionController::Base

  def new
  end

## la def create permet de récupérer et sauver ce que le nouvel utilisateur a renseigné
  def create
    @user = User.new
    @user.username = (params["username"])
    @user.bio = (params["bio"])
    @user.save
    if
    @user.invalid?
    redirect_to "/users/error"
    else
    redirect_to "/users/#{@user.username}"
    end
  end

  def error
  end

  def show
  @user = User.find_by(username: params["username"])
  end

  end

