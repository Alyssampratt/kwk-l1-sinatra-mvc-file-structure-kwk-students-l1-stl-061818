require './config/environment'
require './app/models/model'


class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get '/' do #defult home page
     erb :index
  end 
  	
  post '/' do #we clicked the button now what
    @the_fortune=get_fortune #method get_fortune is connected to the instance variable @the_fortune
    @the_user=params[:user]
    return erb :results
  end
   
  	get "/newpage" do
      erb :newpage
end
end