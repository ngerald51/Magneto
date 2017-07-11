class SkillsController < ApplicationController

  def new
    @skills=Skill.new
  end

  def edit
  end

  def create
    @skills = Skill.create(user_id: current_user.id,skill: params[:skill][:skill])

    if @skills.save

      respond_to do |format|
        format.js
      end
    else
      render :new
    end
  end

  def destroy
    @skills = Skill.find(params[:format])
    @skills.destroy
   redirect_to dashboard_users_path
  end

end
