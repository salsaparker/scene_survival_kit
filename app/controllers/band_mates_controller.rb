class BandMatesController < ApplicationController
  before_action :set_band_mate, only: [:show, :edit, :update, :destroy]

  # GET /band_mates
  # GET /band_mates.json
  def index
    @band_mates = BandMate.all
  end

  # GET /band_mates/1
  # GET /band_mates/1.json
  def show
  end

  # GET /band_mates/new
  def new
    @band_mate = BandMate.new
  end

  # GET /band_mates/1/edit
  def edit
  end

  # POST /band_mates
  # POST /band_mates.json
  def create
    @band_mate = BandMate.new(band_mate_params)

    respond_to do |format|
      if @band_mate.save
        format.html { redirect_to @band_mate, notice: 'Band mate was successfully created.' }
        format.json { render :show, status: :created, location: @band_mate }
      else
        format.html { render :new }
        format.json { render json: @band_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /band_mates/1
  # PATCH/PUT /band_mates/1.json
  def update
    respond_to do |format|
      if @band_mate.update(band_mate_params)
        format.html { redirect_to @band_mate, notice: 'Band mate was successfully updated.' }
        format.json { render :show, status: :ok, location: @band_mate }
      else
        format.html { render :edit }
        format.json { render json: @band_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_mates/1
  # DELETE /band_mates/1.json
  def destroy
    @band_mate.destroy
    respond_to do |format|
      format.html { redirect_to band_mates_url, notice: 'Band mate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_mate
      @band_mate = BandMate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_mate_params
      params[:band_mate]
    end
end
