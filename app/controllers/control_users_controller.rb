class ControlUsersController < ApplicationController
  def index
    @users = User.all
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

end
