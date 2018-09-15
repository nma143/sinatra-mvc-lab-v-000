require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
      erb :user_input
  end

  post '/' do
      words = PigLatinizer.new
      @user_phrase = params[:user_phrase]
      @converted_text = words.piglatinize(params[:user_phrase])
      erb :results
  end

end
