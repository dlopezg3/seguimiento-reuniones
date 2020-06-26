class UsersController < ApplicationController

  # before_action :set_user_variables, only: :create
  # after_action :set_session_users, only: :create

  def callback
    @data = request.env['omniauth.auth']

    create
  end

  def signout
    reset_session
    flash[:notice] = "Sesión cerrada con éxito"
    redirect_to root_url
  end

  private

  def create
    set_user_variables
    unless user_exists?
      @user = User.new(
                    graph_token: @graph_token_hash[:token],
                    user_name: @user_name,
                    user_email: @user_email)
      if @user.save!
        set_session_users
        flash[:notice] = "Usuario creado con éxito"
        redirect_to meets_path
      end
    else
      set_session_users
      flash[:notice] = "Sesión iniciada con éxito"
      redirect_to meets_path
    end
  end

  def set_user_variables
    @graph_token_hash = @data.dig(:credentials)
    @user_name = @data.dig(:extra, :raw_info, :displayName)
    @user_email = @data.dig(:extra, :raw_info, :mail) ||
                           @data.dig(:extra, :raw_info, :userPrincipalName)
  end

  def user_exists?
    !User.find_by(user_email: @user_email).nil?
  end

  def set_session_users
    @user = User.find_by(user_email: @user_email) if user_exists?

    session[:user_id] = @user.id
  end
end
