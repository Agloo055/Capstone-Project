class AddFavoriteToColSet < ActiveRecord::Migration[7.1]
  def change
    add_column :col_sets, :favorite, :boolean
  end
end
