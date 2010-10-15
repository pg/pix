class PixController < ApplicationController
  def index
    @games = Game.find_live_games
  end

end
