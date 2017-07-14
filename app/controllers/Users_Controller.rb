class UsersController < ApplicationController

  def index
    @resource=User.new
  end

  def dashboard

    @user = User.find(current_user.id)
    @edu = Education.where(user_id: current_user.id)
  end

    def update
    @company = User.find(current_user.id)
    @company.update(user_params)
    redirect_to dashboard_users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def feed
    @jobs= Job.all
    @savedjobs= SavedJob.where(user_id: current_user.id)
  end


  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :headline, :address, :contact)
  end
end

