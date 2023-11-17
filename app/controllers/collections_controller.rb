class CollectionsController < ApplicationController
  def index
    if current_user.blank?
      redirect_to root_path
    end

    @user = User.find(params[:user_id])
    @set = @user.col_set.first
  end
end
