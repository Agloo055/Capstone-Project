class HomeController < ApplicationController
  def index
  end

  def secret
    if current_user.blank?
      redirect_to root_path
    end
  end
end
