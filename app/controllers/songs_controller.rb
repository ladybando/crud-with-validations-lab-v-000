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


end
