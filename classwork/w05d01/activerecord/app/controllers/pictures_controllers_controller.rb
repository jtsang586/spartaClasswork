class PicturesControllersController < ApplicationController
  before_action :set_pictures_controller, only: [:show, :edit, :update, :destroy]

  # GET /pictures_controllers
  # GET /pictures_controllers.json
  def index
    @pictures_controllers = PicturesController.all
  end

  # GET /pictures_controllers/1
  # GET /pictures_controllers/1.json
  def show
  end

  # GET /pictures_controllers/new
  def new
    @pictures_controller = PicturesController.new
  end

  # GET /pictures_controllers/1/edit
  def edit
  end

  # POST /pictures_controllers
  # POST /pictures_controllers.json
  def create
    @pictures_controller = PicturesController.new(pictures_controller_params)

    respond_to do |format|
      if @pictures_controller.save
        format.html { redirect_to @pictures_controller, notice: 'Pictures controller was successfully created.' }
        format.json { render :show, status: :created, location: @pictures_controller }
      else
        format.html { render :new }
        format.json { render json: @pictures_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pictures_controllers/1
  # PATCH/PUT /pictures_controllers/1.json
  def update
    respond_to do |format|
      if @pictures_controller.update(pictures_controller_params)
        format.html { redirect_to @pictures_controller, notice: 'Pictures controller was successfully updated.' }
        format.json { render :show, status: :ok, location: @pictures_controller }
      else
        format.html { render :edit }
        format.json { render json: @pictures_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures_controllers/1
  # DELETE /pictures_controllers/1.json
  def destroy
    @pictures_controller.destroy
    respond_to do |format|
      format.html { redirect_to pictures_controllers_url, notice: 'Pictures controller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pictures_controller
      @pictures_controller = PicturesController.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pictures_controller_params
      params.require(:pictures_controller).permit(:name, :description, :artist, :string, :url)
    end
end
