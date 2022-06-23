class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/artists" do 
    artists = Artist.all
    artists.to_json(include: :concerts)
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
    user = User.find(params[:id])
    user.to_json(include: {concerts: {include: :artist}})
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

  patch "/concerts/:id" do 
    concert = Concert.find(params[:id])
    concert.update(params)
    concert.to_json
  end

  delete "/concerts/:id" do 
    concert = Concert.find(params[:id])
    concert.destroy
    concert.to_json
  end

end
