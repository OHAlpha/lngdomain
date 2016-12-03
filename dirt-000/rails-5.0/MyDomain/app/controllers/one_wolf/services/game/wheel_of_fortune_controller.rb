class OneWolf::Services::Game::WheelOfFortuneController < ApplicationController
  layout "wheel_of_fortune"
  def home
  end

  def about
  end

  def gameplay
  end

  def stats
  end

  def games
  end

  def start
    @game = Wof::Game.create name: 'Untitled'
    @game.create_player_1_link(game: @game, position: 1)
    @game.create_player_2_link(game: @game, position: 2)
    @game.create_player_3_link(game: @game, position: 3)
    render :start
  end
  
  def starting
    @game = Wof::Game.find(params[:wof_game][:id])

    respond_to do |format|
      if @game.update(wof_game_params)
        format.html { redirect_to wheel_of_fortune_play_path(@game_id), notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :start }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def play
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_game_params
      params.require(:wof_game).permit(:name, :sequence, :state, :status, :details, player_1_link_attributes: [ :user_id ], player_2_link_attributes: [ :user_id ], player_2_link_attributes: [ :user_id ])
    end
end
