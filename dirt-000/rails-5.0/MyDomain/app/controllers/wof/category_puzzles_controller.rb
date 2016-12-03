class Wof::CategoryPuzzlesController < ApplicationController
  before_action :set_wof_category_puzzle, only: [:show, :edit, :update, :destroy]

  # GET /wof/category_puzzles
  # GET /wof/category_puzzles.json
  def index
    @wof_category_puzzles = Wof::CategoryPuzzle.all
  end

  # GET /wof/category_puzzles/1
  # GET /wof/category_puzzles/1.json
  def show
  end

  # GET /wof/category_puzzles/new
  def new
    @wof_category_puzzle = Wof::CategoryPuzzle.new
  end

  # GET /wof/category_puzzles/1/edit
  def edit
  end

  # POST /wof/category_puzzles
  # POST /wof/category_puzzles.json
  def create
    @wof_category_puzzle = Wof::CategoryPuzzle.new(wof_category_puzzle_params)

    respond_to do |format|
      if @wof_category_puzzle.save
        format.html { redirect_to @wof_category_puzzle, notice: 'Category puzzle was successfully created.' }
        format.json { render :show, status: :created, location: @wof_category_puzzle }
      else
        format.html { render :new }
        format.json { render json: @wof_category_puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/category_puzzles/1
  # PATCH/PUT /wof/category_puzzles/1.json
  def update
    respond_to do |format|
      if @wof_category_puzzle.update(wof_category_puzzle_params)
        format.html { redirect_to @wof_category_puzzle, notice: 'Category puzzle was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_category_puzzle }
      else
        format.html { render :edit }
        format.json { render json: @wof_category_puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/category_puzzles/1
  # DELETE /wof/category_puzzles/1.json
  def destroy
    @wof_category_puzzle.destroy
    respond_to do |format|
      format.html { redirect_to wof_category_puzzles_url, notice: 'Category puzzle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_category_puzzle
      @wof_category_puzzle = Wof::CategoryPuzzle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_category_puzzle_params
      params.require(:wof_category_puzzle).permit(:puzzle_category_id, :puzzle_id)
    end
end
