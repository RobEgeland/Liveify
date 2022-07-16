class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
 

  get "/artists" do 
    artists = Artist.all
    artists.to_json
  end

  get "/artists/:id" do 
    artist = Artist.find(params[:id])
    artist.to_json(include: {concerts: {include: :user}})
  end

  
  get "/users" do 
    users = User.all.order(:age)
    users.to_json
  end

  get "/users/:id" do 
    find_user
    @user.to_json(include: :concerts)
  end

 

  get "/users/:id/new" do 
    find_user
    concert = Concert.new(params)
    if concert.save
      concert.to_json
    else
      concert.errors.full_messages
    end
  end
  
  get "/concerts" do 
    concerts = Concert.all
    concerts.to_json(include: {artist: {include: :users}})
  end

  post "/concerts" do 
    concert = Concert.new(params)
    if concert.save
      concert.to_json
    else
      concert.errors.full_messages
    end
      
  end
  
  get "/concerts/:id" do 
    find_concert
    @concert.to_json(include: :artist)
  end

  patch "/concerts/:id" do 
    find_concert
    if @concert.update(params) 
      @concert.to_json
    else 
      @concert.errors.full_messages
    end
  end

  delete "/concerts/:id" do 
    find_concert
    @concert.destroy
    @concert.to_json
  end

  private
    def find_user
      @user = User.find(params[:id])
    end

    def find_concert
      @concert = Concert.find(params[:id])
    end

end
