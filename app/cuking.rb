require 'sinatra'
require 'sinatra/base'
require 'sinatra/contrib'
require 'slim'

class Cuking < Sinatra::Application
  get '/' do
    slim :"index"
  end
end
