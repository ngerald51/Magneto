class JobsController < ApplicationController
  def new
    @jobs=Job.new

  end

  def index
  end

  def create

    @jobs = Job.create(coy_id: current_company.id, title: params[:job][:title], 
      bounty: params[:job][:bounty], sector: params[:job][:sector], 
      details: params[:job][:details], jobtype: params[:job][:jobtype])
    
    if @jobs.save
      redirect_to dashboard_companies_path
    else
      render :new
    end
  end
  def destroy
    @jobs = Job.find(params[:format])
    @jobs.destroy
    redirect_to dashboard_companies_path
  end

  def edit
    @jobs = Job.find(params[:format])
  end

  def update 
    @jobs = Job.find(params[:format])
    @jobs.update(coy_id: current_company.id, title: params[:job][:title], 
      bounty: params[:job][:bounty], sector: params[:job][:sector], 
      details: params[:job][:details], jobtype: params[:job][:jobtype])
    redirect_to dashboard_companies_path
 end

  private
  def job_params
    params.require(:job).permit(:coy_id, :title, :sector, :details, :bounty, :jobtype)
  end
end
