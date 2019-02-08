class SongsController < ApplicationController
  def index
    @songs = Song.new
  end

  def create
    @song = Song.create!()
  end
  
  def update
  end
  
  def show
  end
  
  def new
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:song).permit(:title, :)
    end

end
