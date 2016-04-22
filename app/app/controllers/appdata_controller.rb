class AppdataController < ApplicationController
  before_action :set_appdatum, only: [:show, :edit, :update, :destroy]

  # GET /appdata
  # GET /appdata.json
  def index
    @appdata = Appdatum.all
  end

  # GET /appdata/1
  # GET /appdata/1.json
  def show
    @appdatum=Appdatum.find(params[:id])
  end

  def abc
  end
  # GET /appdata/new
  def new
    @appdatum = Appdatum.new
  end

  # GET /appdata/1/edit
  def edit
    @appdatum=Appdatum.find(params[:id])
  end

  # POST /appdata
  # POST /appdata.json
  def create
    @appdatum = Appdatum.new(appdatum_params)

    respond_to do |format|
      if @appdatum.save
        format.html { redirect_to @appdatum, notice: 'Appdatum was successfully created.' }
        format.json { render :show, status: :created, location: @appdatum }
      else
        format.html { render :new }
        format.json { render json: @appdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appdata/1
  # PATCH/PUT /appdata/1.json
  def update
    respond_to do |format|
      if @appdatum.update(appdatum_params)
        format.html { redirect_to @appdatum, notice: 'Appdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @appdatum }
      else
        format.html { render :edit }
        format.json { render json: @appdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appdata/1
  # DELETE /appdata/1.json
  def destroy
    @appdatum.destroy
    respond_to do |format|
      format.html { redirect_to appdata_url, notice: 'Appdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appdatum
      @appdatum = Appdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appdatum_params
      params.fetch(:appdatum).permit(:name, :description, :phone_number, :address, )
    end
end
