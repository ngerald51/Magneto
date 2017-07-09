class UsersController < ApplicationController
  def index
    @resource=User.new
    
  end
end

