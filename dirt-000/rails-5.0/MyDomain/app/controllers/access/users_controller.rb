class Access::UsersController < ApplicationController
  before_action :set_access_user, only: [:show, :edit, :update, :destroy]

  # GET /access/users
  # GET /access/users.json
  def index
    @access_users = Access::User.all
  end

  # GET /access/users/1
  # GET /access/users/1.json
  def show
  end

  # GET /access/users/new
  def new
    @access_user = Access::User.new
  end

  # GET /access/users/1/edit
  def edit
  end

  # POST /access/users
  # POST /access/users.json
  def create
    @access_user = Access::User.new(access_user_params)

    respond_to do |format|
      if @access_user.save
        format.html { redirect_to @access_user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @access_user }
      else
        format.html { render :new }
        format.json { render json: @access_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /access/users/1
  # PATCH/PUT /access/users/1.json
  def update
    respond_to do |format|
      if @access_user.update(access_user_params)
        format.html { redirect_to user_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @access_user }
      else
        format.html { render :edit }
        format.json { render json: @access_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /access/users/1
  # DELETE /access/users/1.json
  def destroy
    @access_user.destroy
    respond_to do |format|
      format.html { redirect_to access_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_user
      if not params[:id].nil?
        @access_user = Access::User.find(params[:id])
      elsif not session[:current_user_id].nil?
        @access_user = Access::User.find(session[:current_user_id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def access_user_params
      params.require(:access_user).permit(:unom, :email, :salt, :hashkey, :iterations, :passhash, :fnom, :mnoms, :lnom, :dnom, pcol_attributes: [:id, :color], scol_attributes: [:id, :color], tcol_attributes: [:id, :color])
    end
end
