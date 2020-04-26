require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    word = PigLatinizer.new(params[:user_phrase])
    @piglatin_word = word.piglatinize
    erb :piglatinize
  end
end