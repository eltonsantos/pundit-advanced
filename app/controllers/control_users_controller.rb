class ControlUsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def add_user
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to control_users_path, notice: 'Usuário atualizado com sucesso' }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to control_users_path, notice: "Usuário criado com sucesso" }
      else
        format.html { render action: "add_user" }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    authorize @user
    @user.destroy
    respond_to do |format|
      format.html { redirect_to control_users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role, :group_id)
    end

end