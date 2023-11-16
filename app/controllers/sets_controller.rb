class SetsController < ApplicationController
  include SearchData
  include Parse

  def index
    @years = year_count
    @parts = part_count
  end

  def show
    @years = year_count
    @parts = part_count
    @data = parse_sets(params[:id].to_i, params[:min_year], params[:max_year], params[:min_parts], params[:max_parts])
    puts ("Next=#{@data['next']}")
    puts ("Previous=#{@data['previous']}")
    @previous = params[:id].to_i - 1
    @next = params[:id].to_i + 1
    @params = params
  end
end
