class SongsController < ApplicationController


  def new
    song = Song.new
  end

  def create
    song = Song.create(name: params[:name], age: params[:age], phone_number: params[:phone_number], user_id: current_user.id)
    song.song_file.attach(params[:song_file])
    render 'index'   
  end

  def index
  	@songs = current_user.songs
  end

end
