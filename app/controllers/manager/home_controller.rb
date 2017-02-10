class Manager::HomeController < Manager::ApplicationController
  def index
    render 'manager/home/index'
  end
end
