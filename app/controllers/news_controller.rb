Dotenv.load
require 'uri'
require 'net/http'
require 'openssl'

class NewsController < ApplicationController
  
  def index
  end

  def search
    host = {content_type: :json, accept: :json, "X-RapidAPI-Key": ENV["API_KEY"]}
    response =  RestClient.get("https://wordsapiv1.p.rapidapi.com/words/#{params[:word]}/typeOf", host)
    word_info = JSON.parse(response, symbolize_names: true)
    @words = word_info[:typeOf].map!{|value| value = value + "!"}
  end

end
