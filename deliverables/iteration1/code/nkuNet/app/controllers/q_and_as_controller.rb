class QAndAsController < ApplicationController
  before_action :set_q_and_a, only: [:show, :edit, :update, :destroy]

  # GET /q_and_as
  # GET /q_and_as.json
  def index
    @q_and_as = QAndA.all
  end

  # GET /q_and_as/1
  # GET /q_and_as/1.json
  def show
  end

  # GET /q_and_as/new
  def new
    @q_and_a = QAndA.new
  end

  # GET /q_and_as/1/edit
  def edit
  end

  # POST /q_and_as
  # POST /q_and_as.json
  def create
    @q_and_a = QAndA.new(q_and_a_params)

    respond_to do |format|
      if @q_and_a.save
        format.html { redirect_to @q_and_a, notice: 'Q and a was successfully created.' }
        format.json { render :show, status: :created, location: @q_and_a }
      else
        format.html { render :new }
        format.json { render json: @q_and_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /q_and_as/1
  # PATCH/PUT /q_and_as/1.json
  def update
    respond_to do |format|
      if @q_and_a.update(q_and_a_params)
        format.html { redirect_to @q_and_a, notice: 'Q and a was successfully updated.' }
        format.json { render :show, status: :ok, location: @q_and_a }
      else
        format.html { render :edit }
        format.json { render json: @q_and_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /q_and_as/1
  # DELETE /q_and_as/1.json
  def destroy
    @q_and_a.destroy
    respond_to do |format|
      format.html { redirect_to q_and_as_url, notice: 'Q and a was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_q_and_a
      @q_and_a = QAndA.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def q_and_a_params
      params.require(:q_and_a).permit(:Logins, :rating, :active_flag, :q_a_text, :create_time)
    end
end
