class SongsController < ApplicationController
  def index
    @songs = Song.new
  end

  def create
    @song = Song.new(song_params)
  if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end
  
  def update
  end
  
  def show
  end
  
  def new
    @song = Song.new
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    end

end
