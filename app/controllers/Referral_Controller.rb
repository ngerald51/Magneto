  class ReferralController < ApplicationController

  def new
    @ref=Referral.new

  end

  def create
    @referral = Referral.create(ref_id: current_user.id,can_id: params[:id],job_id: params[:job_id])
    
    if @referral.save
      redirect_to dashboard_users_path
    else
      render :new
    end

  end
end
