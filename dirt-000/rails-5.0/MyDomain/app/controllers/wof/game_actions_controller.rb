class Wof::GameActionsController < ApplicationController
  before_action :set_wof_game_action, only: [:show, :edit, :update, :destroy]

  # GET /wof/game_actions
  # GET /wof/game_actions.json
  def index
    @wof_game_actions = Wof::GameAction.all
  end

  # GET /wof/game_actions/1
  # GET /wof/game_actions/1.json
  def show
  end

  # GET /wof/game_actions/new
  def new
    @wof_game_action = Wof::GameAction.new
  end

  # GET /wof/game_actions/1/edit
  def edit
  end

  # POST /wof/game_actions
  # POST /wof/game_actions.json
  def create
    @wof_game_action = Wof::GameAction.new(wof_game_action_params)

    respond_to do |format|
      if @wof_game_action.save
        format.html { redirect_to @wof_game_action, notice: 'Game action was successfully created.' }
        format.json { render :show, status: :created, location: @wof_game_action }
      else
        format.html { render :new }
        format.json { render json: @wof_game_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/game_actions/1
  # PATCH/PUT /wof/game_actions/1.json
  def update
    respond_to do |format|
      if @wof_game_action.update(wof_game_action_params)
        format.html { redirect_to @wof_game_action, notice: 'Game action was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_game_action }
      else
        format.html { render :edit }
        format.json { render json: @wof_game_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/game_actions/1
  # DELETE /wof/game_actions/1.json
  def destroy
    @wof_game_action.destroy
    respond_to do |format|
      format.html { redirect_to wof_game_actions_url, notice: 'Game action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_game_action
      @wof_game_action = Wof::GameAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_game_action_params
      params.require(:wof_game_action).permit(:game_id, :game_puzzle_id, :game_user_id, :kind, :score, :details, :sequence)
    end
end
