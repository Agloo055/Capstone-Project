class ColSetsController < ApplicationController
  include Parse

  def index
    if current_user.blank?
      redirect_to root_path
    end
    user = User.find(current_user.id)
    @sets = user.col_set
  end

  def show
    if current_user.blank?
      redirect_to root_path
    end
    @user = User.find(current_user.id)
    @set = @user.col_set.find(params[:id])
    @theme = parse_theme(@set['theme_id'])
  end

  def create
    @user = User.find(current_user.id)
    @set = @user.col_set.create(col_set_params)
    redirect_to user_col_sets_path
  end

  def update
    @user = User.find(current_user.id)
    @set = @user.col_set.find(params[:id])
    @set.update(favorite_params)
    redirect_to user_col_set_path(params[:id])
  end

  def destroy
    @user = User.find(current_user.id)
    @set = @user.col_set.find(params[:id])
    @set.destroy
    redirect_to user_col_sets_path
  end

  private
    def col_set_params
      params.require(:col_set).permit(:set_num, :name, :year, :theme_id, :num_parts, :set_img_url, :set_url)
    end
  
  private
    def favorite_params
      params.require(:col_set).permit(:favorite)
    end
end
