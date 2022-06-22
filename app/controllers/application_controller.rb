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

  get "/concerts" do 
    concerts = Concert.all
    concerts.to_json(include: :artist)
  end

end
