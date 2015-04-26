class MerchArtistsController < ApplicationController
  before_action :set_merch_artist, only: [:show, :edit, :update, :destroy]

  # GET /merch_artists
  # GET /merch_artists.json
  def index
    @merch_artists = MerchArtist.all
  end

  # GET /merch_artists/1
  # GET /merch_artists/1.json
  def show
  end

  # GET /merch_artists/new
  def new
    @merch_artist = MerchArtist.new
  end

  # GET /merch_artists/1/edit
  def edit
  end

  # POST /merch_artists
  # POST /merch_artists.json
  def create
    @merch_artist = MerchArtist.new(merch_artist_params)

    respond_to do |format|
      if @merch_artist.save
        format.html { redirect_to @merch_artist, notice: 'Merch artist was successfully created.' }
        format.json { render :show, status: :created, location: @merch_artist }
      else
        format.html { render :new }
        format.json { render json: @merch_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merch_artists/1
  # PATCH/PUT /merch_artists/1.json
  def update
    respond_to do |format|
      if @merch_artist.update(merch_artist_params)
        format.html { redirect_to @merch_artist, notice: 'Merch artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @merch_artist }
      else
        format.html { render :edit }
        format.json { render json: @merch_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merch_artists/1
  # DELETE /merch_artists/1.json
  def destroy
    @merch_artist.destroy
    respond_to do |format|
      format.html { redirect_to merch_artists_url, notice: 'Merch artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merch_artist
      @merch_artist = MerchArtist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merch_artist_params
      params[:merch_artist]
    end
end
