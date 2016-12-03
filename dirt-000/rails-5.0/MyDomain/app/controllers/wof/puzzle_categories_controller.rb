class Wof::PuzzleCategoriesController < ApplicationController
  before_action :set_wof_puzzle_category, only: [:show, :edit, :update, :destroy]

  # GET /wof/puzzle_categories
  # GET /wof/puzzle_categories.json
  def index
    @wof_puzzle_categories = Wof::PuzzleCategory.all
  end

  # GET /wof/puzzle_categories/1
  # GET /wof/puzzle_categories/1.json
  def show
  end

  # GET /wof/puzzle_categories/new
  def new
    @wof_puzzle_category = Wof::PuzzleCategory.new
  end

  # GET /wof/puzzle_categories/1/edit
  def edit
  end

  # POST /wof/puzzle_categories
  # POST /wof/puzzle_categories.json
  def create
    @wof_puzzle_category = Wof::PuzzleCategory.new(wof_puzzle_category_params)

    respond_to do |format|
      if @wof_puzzle_category.save
        format.html { redirect_to @wof_puzzle_category, notice: 'Puzzle category was successfully created.' }
        format.json { render :show, status: :created, location: @wof_puzzle_category }
      else
        format.html { render :new }
        format.json { render json: @wof_puzzle_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/puzzle_categories/1
  # PATCH/PUT /wof/puzzle_categories/1.json
  def update
    respond_to do |format|
      if @wof_puzzle_category.update(wof_puzzle_category_params)
        format.html { redirect_to @wof_puzzle_category, notice: 'Puzzle category was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_puzzle_category }
      else
        format.html { render :edit }
        format.json { render json: @wof_puzzle_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/puzzle_categories/1
  # DELETE /wof/puzzle_categories/1.json
  def destroy
    @wof_puzzle_category.destroy
    respond_to do |format|
      format.html { redirect_to wof_puzzle_categories_url, notice: 'Puzzle category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_puzzle_category
      @wof_puzzle_category = Wof::PuzzleCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_puzzle_category_params
      params.require(:wof_puzzle_category).permit(:name, :description)
    end
end
