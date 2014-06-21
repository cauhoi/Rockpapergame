class GamesController < ApplicationController
  def new

  end

  def throw
    @game = Game.new(params[:sign])
    @game.throw
  end
end
