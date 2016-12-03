class Wof::GameModeratorActionsController < ApplicationController
  before_action :set_wof_game_moderator_action, only: [:show, :edit, :update, :destroy]

  # GET /wof/game_moderator_actions
  # GET /wof/game_moderator_actions.json
  def index
    @wof_game_moderator_actions = Wof::GameModeratorAction.all
  end

  # GET /wof/game_moderator_actions/1
  # GET /wof/game_moderator_actions/1.json
  def show
  end

  # GET /wof/game_moderator_actions/new
  def new
    @wof_game_moderator_action = Wof::GameModeratorAction.new
  end

  # GET /wof/game_moderator_actions/1/edit
  def edit
  end

  # POST /wof/game_moderator_actions
  # POST /wof/game_moderator_actions.json
  def create
    @wof_game_moderator_action = Wof::GameModeratorAction.new(wof_game_moderator_action_params)

    respond_to do |format|
      if @wof_game_moderator_action.save
        format.html { redirect_to @wof_game_moderator_action, notice: 'Game moderator action was successfully created.' }
        format.json { render :show, status: :created, location: @wof_game_moderator_action }
      else
        format.html { render :new }
        format.json { render json: @wof_game_moderator_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/game_moderator_actions/1
  # PATCH/PUT /wof/game_moderator_actions/1.json
  def update
    respond_to do |format|
      if @wof_game_moderator_action.update(wof_game_moderator_action_params)
        format.html { redirect_to @wof_game_moderator_action, notice: 'Game moderator action was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_game_moderator_action }
      else
        format.html { render :edit }
        format.json { render json: @wof_game_moderator_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/game_moderator_actions/1
  # DELETE /wof/game_moderator_actions/1.json
  def destroy
    @wof_game_moderator_action.destroy
    respond_to do |format|
      format.html { redirect_to wof_game_moderator_actions_url, notice: 'Game moderator action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_game_moderator_action
      @wof_game_moderator_action = Wof::GameModeratorAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_game_moderator_action_params
      params.require(:wof_game_moderator_action).permit(:game_id, :game_puzzle_id, :game_user_id, :game_action_id, :kind, :score, :details, :sequence)
    end
end
