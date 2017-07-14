class CompaniesController < ApplicationController

  def index
    @resource=Company.new
   
    
  end

  def dashboard
    @company = Company.find(current_company.id)
    @jobs = Job.where(coy_id: current_company.id)
  end

  def update
    @company = Company.find(current_company.id)
    @company.update(coy_params)
    redirect_to dashboard_companies_path
  end

  def show
    @company = Company.find(params[:id])
   @jobs = Job.where(coy_id: params[:id])
  end


  private

  def coy_params
    params.require(:company).permit(:details, :coyname, :email, :hr_name)
  end
end

