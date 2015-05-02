class VisualArtistsController < ApplicationController
  before_action :set_visual_artist, only: [:show, :edit, :update, :destroy]

  # GET /visual_artists
  # GET /visual_artists.json
  def index
    @visual_artists = VisualArtist.all
  end

  # GET /visual_artists/1
  # GET /visual_artists/1.json
  def show
  end

  # GET /visual_artists/new
  def new
    @visual_artist = VisualArtist.new
  end

  # GET /visual_artists/1/edit
  def edit
  end

  # POST /visual_artists
  # POST /visual_artists.json
  def create
    @visual_artist = VisualArtist.new(visual_artist_params)

    respond_to do |format|
      if @visual_artist.save
        format.html { redirect_to @visual_artist, notice: 'Visual artist was successfully created.' }
        format.json { render :show, status: :created, location: @visual_artist }
      else
        format.html { render :new }
        format.json { render json: @visual_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visual_artists/1
  # PATCH/PUT /visual_artists/1.json
  def update
    respond_to do |format|
      if @visual_artist.update(visual_artist_params)
        format.html { redirect_to @visual_artist, notice: 'Visual artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @visual_artist }
      else
        format.html { render :edit }
        format.json { render json: @visual_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visual_artists/1
  # DELETE /visual_artists/1.json
  def destroy
    @visual_artist.destroy
    respond_to do |format|
      format.html { redirect_to visual_artists_url, notice: 'Visual artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visual_artist
      @visual_artist = VisualArtist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visual_artist_params
      params.require(:visual_artist).permit(:first_name, :last_name, :type, :phone_number, :email_address)
    end
end
