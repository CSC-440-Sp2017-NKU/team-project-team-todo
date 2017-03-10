class EnrolledClassesController < ApplicationController
  before_action :set_enrolled_class, only: [:show, :edit, :update, :destroy]

  # GET /enrolled_classes
  # GET /enrolled_classes.json
  def index
    @enrolled_classes = EnrolledClass.all
  end

  # GET /enrolled_classes/1
  # GET /enrolled_classes/1.json
  def show
  end

  # GET /enrolled_classes/new
  def new
    @enrolled_class = EnrolledClass.new
  end

  # GET /enrolled_classes/1/edit
  def edit
  end

  # POST /enrolled_classes
  # POST /enrolled_classes.json
  def create
    @enrolled_class = EnrolledClass.new(enrolled_class_params)

    respond_to do |format|
      if @enrolled_class.save
        format.html { redirect_to @enrolled_class, notice: 'Enrolled class was successfully created.' }
        format.json { render :show, status: :created, location: @enrolled_class }
      else
        format.html { render :new }
        format.json { render json: @enrolled_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrolled_classes/1
  # PATCH/PUT /enrolled_classes/1.json
  def update
    respond_to do |format|
      if @enrolled_class.update(enrolled_class_params)
        format.html { redirect_to @enrolled_class, notice: 'Enrolled class was successfully updated.' }
        format.json { render :show, status: :ok, location: @enrolled_class }
      else
        format.html { render :edit }
        format.json { render json: @enrolled_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolled_classes/1
  # DELETE /enrolled_classes/1.json
  def destroy
    @enrolled_class.destroy
    respond_to do |format|
      format.html { redirect_to enrolled_classes_url, notice: 'Enrolled class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolled_class
      @enrolled_class = EnrolledClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrolled_class_params
      params.require(:enrolled_class).permit(:Logins, :Courses, :active)
    end
end
