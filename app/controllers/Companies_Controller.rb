class CompaniesController < ApplicationController
  def index
    @resource=Company.new
    
  end
end

