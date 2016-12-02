class Access::UserQueuesController < ApplicationController
  before_action :set_access_user_queue, only: [:show, :edit, :update, :destroy]

  # GET /access/user_queues
  # GET /access/user_queues.json
  def index
    @access_user_queues = Access::UserQueue.all
  end

  # GET /access/user_queues/1
  # GET /access/user_queues/1.json
  def show
  end

  # GET /access/user_queues/new
  def new
    @access_user_queue = Access::UserQueue.new
  end

  # GET /access/user_queues/1/edit
  def edit
  end

  # POST /access/user_queues
  # POST /access/user_queues.json
  def create
    @access_user_queue = Access::UserQueue.new(access_user_queue_params)

    respond_to do |format|
      if @access_user_queue.save
        format.html { redirect_to @access_user_queue, notice: 'User queue was successfully created.' }
        format.json { render :show, status: :created, location: @access_user_queue }
      else
        format.html { render :new }
        format.json { render json: @access_user_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /access/user_queues/1
  # PATCH/PUT /access/user_queues/1.json
  def update
    respond_to do |format|
      if @access_user_queue.update(access_user_queue_params)
        format.html { redirect_to @access_user_queue, notice: 'User queue was successfully updated.' }
        format.json { render :show, status: :ok, location: @access_user_queue }
      else
        format.html { render :edit }
        format.json { render json: @access_user_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /access/user_queues/1
  # DELETE /access/user_queues/1.json
  def destroy
    @access_user_queue.destroy
    respond_to do |format|
      format.html { redirect_to access_user_queues_url, notice: 'User queue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_user_queue
      @access_user_queue = Access::UserQueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def access_user_queue_params
      params.require(:access_user_queue).permit(:unom, :email, :salt, :iterations)
    end
end
