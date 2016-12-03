class Wof::GamePuzzlesController < ApplicationController
  before_action :set_wof_game_puzzle, only: [:show, :edit, :update, :destroy]

  # GET /wof/game_puzzles
  # GET /wof/game_puzzles.json
  def index
    @wof_game_puzzles = Wof::GamePuzzle.all
  end

  # GET /wof/game_puzzles/1
  # GET /wof/game_puzzles/1.json
  def show
  end

  # GET /wof/game_puzzles/new
  def new
    @wof_game_puzzle = Wof::GamePuzzle.new
  end

  # GET /wof/game_puzzles/1/edit
  def edit
  end

  # POST /wof/game_puzzles
  # POST /wof/game_puzzles.json
  def create
    @wof_game_puzzle = Wof::GamePuzzle.new(wof_game_puzzle_params)

    respond_to do |format|
      if @wof_game_puzzle.save
        format.html { redirect_to @wof_game_puzzle, notice: 'Game puzzle was successfully created.' }
        format.json { render :show, status: :created, location: @wof_game_puzzle }
      else
        format.html { render :new }
        format.json { render json: @wof_game_puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/game_puzzles/1
  # PATCH/PUT /wof/game_puzzles/1.json
  def update
    respond_to do |format|
      if @wof_game_puzzle.update(wof_game_puzzle_params)
        format.html { redirect_to @wof_game_puzzle, notice: 'Game puzzle was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_game_puzzle }
      else
        format.html { render :edit }
        format.json { render json: @wof_game_puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/game_puzzles/1
  # DELETE /wof/game_puzzles/1.json
  def destroy
    @wof_game_puzzle.destroy
    respond_to do |format|
      format.html { redirect_to wof_game_puzzles_url, notice: 'Game puzzle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_game_puzzle
      @wof_game_puzzle = Wof::GamePuzzle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_game_puzzle_params
      params.require(:wof_game_puzzle).permit(:game_id, :puzzle_id, :role)
    end
end
