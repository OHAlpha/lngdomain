class Wof::PuzzleWordsController < ApplicationController
  before_action :set_wof_puzzle_word, only: [:show, :edit, :update, :destroy]

  # GET /wof/puzzle_words
  # GET /wof/puzzle_words.json
  def index
    @wof_puzzle_words = Wof::PuzzleWord.all
  end

  # GET /wof/puzzle_words/1
  # GET /wof/puzzle_words/1.json
  def show
  end

  # GET /wof/puzzle_words/new
  def new
    @wof_puzzle_word = Wof::PuzzleWord.new
  end

  # GET /wof/puzzle_words/1/edit
  def edit
  end

  # POST /wof/puzzle_words
  # POST /wof/puzzle_words.json
  def create
    @wof_puzzle_word = Wof::PuzzleWord.new(wof_puzzle_word_params)

    respond_to do |format|
      if @wof_puzzle_word.save
        format.html { redirect_to @wof_puzzle_word, notice: 'Puzzle word was successfully created.' }
        format.json { render :show, status: :created, location: @wof_puzzle_word }
      else
        format.html { render :new }
        format.json { render json: @wof_puzzle_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wof/puzzle_words/1
  # PATCH/PUT /wof/puzzle_words/1.json
  def update
    respond_to do |format|
      if @wof_puzzle_word.update(wof_puzzle_word_params)
        format.html { redirect_to @wof_puzzle_word, notice: 'Puzzle word was successfully updated.' }
        format.json { render :show, status: :ok, location: @wof_puzzle_word }
      else
        format.html { render :edit }
        format.json { render json: @wof_puzzle_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wof/puzzle_words/1
  # DELETE /wof/puzzle_words/1.json
  def destroy
    @wof_puzzle_word.destroy
    respond_to do |format|
      format.html { redirect_to wof_puzzle_words_url, notice: 'Puzzle word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wof_puzzle_word
      @wof_puzzle_word = Wof::PuzzleWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wof_puzzle_word_params
      params.require(:wof_puzzle_word).permit(:puzzle_id, :word, :orientation, :row, :column)
    end
end
