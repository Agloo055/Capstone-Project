class LegoController < ApplicationController
  include Parse

  def show
    @data = parse_set(params[:id])
    @theme = parse_theme(@data['theme_id'])
    @user = current_user
  end
end
