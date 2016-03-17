class ControlUsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.where(father_id: current_user.id)
  end

  def add_user
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to control_users_path, notice: 'Usuário atualizado com sucesso' }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    puts params
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
      params.require(:user).permit(:email, :password, :password_confirmation, :role, :group_id, :father_id, :company_id)
    end

end