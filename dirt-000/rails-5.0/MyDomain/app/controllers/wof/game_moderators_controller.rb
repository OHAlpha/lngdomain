class Wof::GameModeratorsController < ApplicationController
  before_action :set_wof_game_moderator, only: [:show, :edit, :update, :destroy]

  # GET /wof/game_moderators
  # GET /wof/game_moderators.json
  def index
    @wof_game_moderators = Wof::GameModerator.all
  end

  # GET /wof/game_moderators/1
  # GET /wof/game_moderators/1.json
  def show
  end

  # GET /wof/game_moderators/new
  def new
    @wof_game_moderator = Wof::GameModerator.new
  end

  # GET /wof/game_moderators/1/edit
  def edit
  end

  # POST /wof/game_moderators
  # POST /wof/game_moderators.json
  def create
    @wof_game_moderator = Wof::GameModerator.new(wof_game_moderator_params)

    respond_to do |format|
      if @wof_game_moderator.save
        format.html { redirect_to @wof_game_moderator, notice: 'Game moderator was successfully created.' }
        format.json { render :show, status: :created, location: @wof_game_moderator }
      else
        format.html { render :new }
        format.json { render json: @wof_game_moderator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/game_moderators/1
  # PATCH/PUT /wof/game_moderators/1.json
  def update
    respond_to do |format|
      if @wof_game_moderator.update(wof_game_moderator_params)
        format.html { redirect_to @wof_game_moderator, notice: 'Game moderator was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_game_moderator }
      else
        format.html { render :edit }
        format.json { render json: @wof_game_moderator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/game_moderators/1
  # DELETE /wof/game_moderators/1.json
  def destroy
    @wof_game_moderator.destroy
    respond_to do |format|
      format.html { redirect_to wof_game_moderators_url, notice: 'Game moderator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_game_moderator
      @wof_game_moderator = Wof::GameModerator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_game_moderator_params
      params.require(:wof_game_moderator).permit(:game_id, :user_id, :role)
    end
end
