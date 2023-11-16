class SetsController < ApplicationController
  include SearchData

  def index
    @years = year_count
    @pieces = piece_count
  end

  def show
    @year = params[:year]
    @min_pieces = params[:min_pieces]
    @min_pieces = params[:max_pieces]
  end
end
