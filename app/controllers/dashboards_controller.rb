class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @shouts = current_user.shouts.order(created_at: :desc)
  end
end
