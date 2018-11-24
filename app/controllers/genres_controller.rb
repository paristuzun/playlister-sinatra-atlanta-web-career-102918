class GenresController < ApplicationController
  set :views, 'app/views/genres'
  set :method_override, true

    get '/genres' do
      @genres = Genre.all
      erb :index
    end

    # show route
    get '/genres/:slug' do
      @genre = Genre.find_by_slug(params[:slug])
      erb :show
    end

end
