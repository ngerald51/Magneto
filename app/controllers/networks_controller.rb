class NetworksController < ApplicationController

  def new
  end

  def index
  end

  def show
    @user = User.all
    @company = Company.all
  end

  def create
    if params[:rtype] =='U'
      Network.create(from_uid: User.find(params[:f_uid]),
       to_uid: User.find(params[:to_id]))
    elsif params[:rtype] =='C'
      UcNetwork.create(from_uid: User.find(params[:f_cid]),
       to_cid: Company.find(params[:to_id]))
    else
       CompanyNetwork.create(from_cid: Company.find(params[:f_cid]),
       to_uid: User.find(params[:to_uid]))
    end
    redirect_to networks_path
  end

end 