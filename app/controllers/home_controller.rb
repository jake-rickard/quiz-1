class HomeController < ApplicationController

  def index
    @player = Player.new
    @players = Player.all  
  end

  def create
    @player = Player.create(player_params)
    redirect_to root_path
  end


  private

  def player_params
    params.require(:player).permit(:name, :position, :team)
  end
  
end
