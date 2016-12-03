class Wof::GamesController < OneWolf::Services::Game::WheelOfFortuneController
  before_action :set_wof_game, only: [:show, :edit, :update, :destroy]

  # GET /wof/games
  # GET /wof/games.json
  def index
    @wof_games = Wof::Game.all
  end

  # GET /wof/games/1
  # GET /wof/games/1.json
  def show
  end

  # GET /wof/games/new
  def new
    @wof_game = Wof::Game.new
  end

  # GET /wof/games/1/edit
  def edit
  end

  # POST /wof/games
  # POST /wof/games.json
  def create
    @wof_game = Wof::Game.new(wof_game_params)

    respond_to do |format|
      if @wof_game.save
        format.html { redirect_to @wof_game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @wof_game }
      else
        format.html { render wheel_of_fortune_start_path }
        format.json { render json: @wof_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/games/1
  # PATCH/PUT /wof/games/1.json
  def update
    respond_to do |format|
      if @wof_game.update(wof_game_params)
        format.html { redirect_to @wof_game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_game }
      else
        format.html { render :edit }
        format.json { render json: @wof_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/games/1
  # DELETE /wof/games/1.json
  def destroy
    @wof_game.destroy
    respond_to do |format|
      format.html { redirect_to wof_games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_game
      @wof_game = Wof::Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_game_params
      params.require(:wof_game).permit(:name, :sequence, :state, :status, :details, player_1_link_attributes: [ :user_id ], player_2_link_attributes: [ :user_id ], player_2_link_attributes: [ :user_id ])
    end
end
