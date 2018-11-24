class SongsController < ApplicationController
  set :views, 'app/views/songs'
  set :method_override, true

    # index route
    get '/songs' do
      @songs = Song.all
      erb :index
    end

    # new route
    get '/songs/new' do
      erb :new
    end

    # create route
    #Be able to create a new song
    post '/songs' do
      @song = Song.create(slug: params[:id])
      redirect "/songs/#{@song.slug}"
    end

    # show route
    get '/songs/:slug' do
      @song = Song.find(params[:slug])
      erb :show
    end

    # edit route
    get '/songs/:slug/edit' do

      @song = Song.find(params[:slug])
      erb :edit
    end

    # update route
  patch '/songs/:slug' do

    # @song = Song.find_by_slug(params[:slug])
    # @song.update(params[:slug])
    # redirect "/songs/#{@song.slug}"
  end




end
