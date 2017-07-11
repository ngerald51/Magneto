class EducationsController < ApplicationController


  def update
    @edu = Education.where(user_id: current_user.id)
    @company.update(coy_params)
    redirect_to dashboard_users_path
  end

  def new
    @edu=Education.new
  end

  def edit
  end

  def create

    @edu = Education.create(user_id: current_user.id,level: params[:education][:level], cert: params[:education][:cert],
      school: params[:education][:school])
    
    if @edu.save
       respond_to do |format|
        format.js
      end
      #redirect_to dashboard_users_path
    else
      render :new
    end
  end

  def destroy
    @edu = Education.find(params[:format])
    @edu.destroy
    redirect_to dashboard_users_path
  end

end
