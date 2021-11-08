require 'open-uri'

class FlatsController < ApplicationController
  def index
    @flats = get_flats
  end

  def show
    @flat = get_flats.find {|flat| flat["id"] == params[:id].to_i }
  end

  private

  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    JSON.parse(open(url).read)
  end
end
