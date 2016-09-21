class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
  	
  end

  def change_styling
  	if current_user.dashboard.blank? 
  	  dashboard = current_user.build_dashboard(dashboard_params)
      dashboard.save
    else
      current_user.dashboard.update(dashboard_params)
    end  
    flash[:notice] = 'Successfully Changed Styling.'
    redirect_to root_path
  end

  private

  def dashboard_params
    params.require(:dashboard).permit(:color, :title, :font, :user_id)
  end	
end
