class Wof::PuzzlesController < ApplicationController
  before_action :set_wof_puzzle, only: [:show, :edit, :update, :destroy]

  # GET /wof/puzzles
  # GET /wof/puzzles.json
  def index
    @wof_puzzles = Wof::Puzzle.all
  end

  # GET /wof/puzzles/1
  # GET /wof/puzzles/1.json
  def show
  end

  # GET /wof/puzzles/new
  def new
    @wof_puzzle = Wof::Puzzle.new
  end

  # GET /wof/puzzles/1/edit
  def edit
  end

  # POST /wof/puzzles
  # POST /wof/puzzles.json
  def create
    @wof_puzzle = Wof::Puzzle.new(wof_puzzle_params)

    respond_to do |format|
      if @wof_puzzle.save
        format.html { redirect_to @wof_puzzle, notice: 'Puzzle was successfully created.' }
        format.json { render :show, status: :created, location: @wof_puzzle }
      else
        format.html { render :new }
        format.json { render json: @wof_puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/puzzles/1
  # PATCH/PUT /wof/puzzles/1.json
  def update
    respond_to do |format|
      if @wof_puzzle.update(wof_puzzle_params)
        format.html { redirect_to @wof_puzzle, notice: 'Puzzle was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_puzzle }
      else
        format.html { render :edit }
        format.json { render json: @wof_puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/puzzles/1
  # DELETE /wof/puzzles/1.json
  def destroy
    @wof_puzzle.destroy
    respond_to do |format|
      format.html { redirect_to wof_puzzles_url, notice: 'Puzzle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_puzzle
      @wof_puzzle = Wof::Puzzle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_puzzle_params
      params.require(:wof_puzzle).permit(:puzzle, :kind)
    end
end
