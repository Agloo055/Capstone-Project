class CollectionsController < ApplicationController
  def index
    if current_user.blank?
      redirect_to root_path
    end
  end
end
