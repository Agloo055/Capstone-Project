class ColSetsController < ApplicationController
  def index
    if current_user.blank?
      redirect_to root_path
    end
    user = User.find(current_user.id)
    @sets = user.col_set
  end

  def show
    
  end

  def create
    puts params
    @user = User.find(current_user.id)
    @set = @user.col_set.create(col_set_params)
    redirect_to user_collections_path
  end

  private
    def col_set_params
      params.require(:col_set).permit(:set_num, :name, :year, :theme_id, :num_parts, :set_img_url, :set_url)
    end
end
