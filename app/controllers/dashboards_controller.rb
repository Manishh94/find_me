class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[index]
  def index; end
end
