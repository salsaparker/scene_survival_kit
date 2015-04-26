class MediaArtistsController < ApplicationController
  before_action :set_media_artist, only: [:show, :edit, :update, :destroy]

  # GET /media_artists
  # GET /media_artists.json
  def index
    @media_artists = MediaArtist.all
  end

  # GET /media_artists/1
  # GET /media_artists/1.json
  def show
  end

  # GET /media_artists/new
  def new
    @media_artist = MediaArtist.new
  end

  # GET /media_artists/1/edit
  def edit
  end

  # POST /media_artists
  # POST /media_artists.json
  def create
    @media_artist = MediaArtist.new(media_artist_params)

    respond_to do |format|
      if @media_artist.save
        format.html { redirect_to @media_artist, notice: 'Media artist was successfully created.' }
        format.json { render :show, status: :created, location: @media_artist }
      else
        format.html { render :new }
        format.json { render json: @media_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_artists/1
  # PATCH/PUT /media_artists/1.json
  def update
    respond_to do |format|
      if @media_artist.update(media_artist_params)
        format.html { redirect_to @media_artist, notice: 'Media artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_artist }
      else
        format.html { render :edit }
        format.json { render json: @media_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_artists/1
  # DELETE /media_artists/1.json
  def destroy
    @media_artist.destroy
    respond_to do |format|
      format.html { redirect_to media_artists_url, notice: 'Media artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_artist
      @media_artist = MediaArtist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_artist_params
      params[:media_artist]
    end
end
