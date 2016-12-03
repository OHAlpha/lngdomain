class Wof::GamePlayersController < ApplicationController
  before_action :set_wof_game_player, only: [:show, :edit, :update, :destroy]

  # GET /wof/game_players
  # GET /wof/game_players.json
  def index
    @wof_game_players = Wof::GamePlayer.all
  end

  # GET /wof/game_players/1
  # GET /wof/game_players/1.json
  def show
  end

  # GET /wof/game_players/new
  def new
    @wof_game_player = Wof::GamePlayer.new
  end

  # GET /wof/game_players/1/edit
  def edit
  end

  # POST /wof/game_players
  # POST /wof/game_players.json
  def create
    @wof_game_player = Wof::GamePlayer.new(wof_game_player_params)

    respond_to do |format|
      if @wof_game_player.save
        format.html { redirect_to @wof_game_player, notice: 'Game player was successfully created.' }
        format.json { render :show, status: :created, location: @wof_game_player }
      else
        format.html { render :new }
        format.json { render json: @wof_game_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/game_players/1
  # PATCH/PUT /wof/game_players/1.json
  def update
    respond_to do |format|
      if @wof_game_player.update(wof_game_player_params)
        format.html { redirect_to @wof_game_player, notice: 'Game player was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_game_player }
      else
        format.html { render :edit }
        format.json { render json: @wof_game_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/game_players/1
  # DELETE /wof/game_players/1.json
  def destroy
    @wof_game_player.destroy
    respond_to do |format|
      format.html { redirect_to wof_game_players_url, notice: 'Game player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_game_player
      @wof_game_player = Wof::GamePlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_game_player_params
      params.require(:wof_game_player).permit(:game_id, :user_id, :position, :score, :state, :status, :details)
    end
end
