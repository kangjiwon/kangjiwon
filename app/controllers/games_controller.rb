class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    id = params[:id]
    @game = Game.find(id)
  end
  
  def new
    # default: render 'new' template
  end
  def create
    @game = Game.create!(params[:game])
    flash[:notice] = "#{@game.title} was successfully created"
    redirect_to games_path
  end
  def edit
    @game = Game.find params[:id]
  end
     
  def update
    @game = Game.find params[:id]
    @game.update_attributes!(params[:game])
    flash[:notice] = "#{@game.title} was successfully updated."
    redirect_to game_path(@game)
  end
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Game '#{@game.title}' deleted."
    redirect_to games_path
  end

end
