class LoginTypesController < ApplicationController
  before_action :set_login_type, only: [:show, :edit, :update, :destroy]

  # GET /login_types
  # GET /login_types.json
  def index
    @login_types = LoginType.all
  end

  # GET /login_types/1
  # GET /login_types/1.json
  def show
  end

  # GET /login_types/new
  def new
    @login_type = LoginType.new
  end

  # GET /login_types/1/edit
  def edit
  end

  # POST /login_types
  # POST /login_types.json
  def create
    @login_type = LoginType.new(login_type_params)

    respond_to do |format|
      if @login_type.save
        format.html { redirect_to @login_type, notice: 'Login type was successfully created.' }
        format.json { render :show, status: :created, location: @login_type }
      else
        format.html { render :new }
        format.json { render json: @login_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /login_types/1
  # PATCH/PUT /login_types/1.json
  def update
    respond_to do |format|
      if @login_type.update(login_type_params)
        format.html { redirect_to @login_type, notice: 'Login type was successfully updated.' }
        format.json { render :show, status: :ok, location: @login_type }
      else
        format.html { render :edit }
        format.json { render json: @login_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_types/1
  # DELETE /login_types/1.json
  def destroy
    @login_type.destroy
    respond_to do |format|
      format.html { redirect_to login_types_url, notice: 'Login type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_type
      @login_type = LoginType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_type_params
      params.require(:login_type).permit(:title, :description)
    end
end
