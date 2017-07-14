class SavedjobsController < ApplicationController

def create
 SavedJob.create(user_id: params[:user_id], job_id: params[:job_id])
 redirect_to feed_users_path
end
end