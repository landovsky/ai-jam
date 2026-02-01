class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @profile_visible = @user.visible_to?(current_user)
    @shared_events = @user.shared_events_with(current_user) if @profile_visible
  end
end
