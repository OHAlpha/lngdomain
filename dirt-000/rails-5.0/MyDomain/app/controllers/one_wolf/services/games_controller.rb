class OneWolf::Services::GamesController < ApplicationController
  before_action :set_one_wolf_services_game, only: [:show, :edit, :update, :destroy]

  # GET /one_wolf/services/games
  # GET /one_wolf/services/games.json
  def index
    @one_wolf_services_games = OneWolf::Services::Game.all
  end

  # GET /one_wolf/services/games/1
  # GET /one_wolf/services/games/1.json
  def show
  end

  # GET /one_wolf/services/games/new
  def new
    @one_wolf_services_game = OneWolf::Services::Game.new
  end

  # GET /one_wolf/services/games/1/edit
  def edit
  end

  # POST /one_wolf/services/games
  # POST /one_wolf/services/games.json
  def create
    @one_wolf_services_game = OneWolf::Services::Game.new(one_wolf_services_game_params)

    respond_to do |format|
      if @one_wolf_services_game.save
        format.html { redirect_to @one_wolf_services_game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @one_wolf_services_game }
      else
        format.html { render :new }
        format.json { render json: @one_wolf_services_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /one_wolf/services/games/1
  # PATCH/PUT /one_wolf/services/games/1.json
  def update
    respond_to do |format|
      if @one_wolf_services_game.update(one_wolf_services_game_params)
        format.html { redirect_to @one_wolf_services_game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @one_wolf_services_game }
      else
        format.html { render :edit }
        format.json { render json: @one_wolf_services_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_wolf/services/games/1
  # DELETE /one_wolf/services/games/1.json
  def destroy
    @one_wolf_services_game.destroy
    respond_to do |format|
      format.html { redirect_to one_wolf_services_games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one_wolf_services_game
      @one_wolf_services_game = OneWolf::Services::Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def one_wolf_services_game_params
      params.require(:one_wolf_services_game).permit(:name, :description, :rules)
    end
end
