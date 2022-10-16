Dotenv.load
require 'uri'
require 'net/http'
require 'openssl'

class NewsController < ApplicationController
  
  def index
  end

  def search
    host = {content_type: :json, accept: :json, "X-RapidAPI-Key": ENV["API_KEY"]}
    response =  RestClient.get("https://newscatcher.p.rapidapi.com/v1/search_enterprise?q=#{params[:ticker]}&lang=en&sort_by=relevancy&page=1&media=True", host)
    news = JSON.parse(response, symbolize_names: true)
    @news = news[:articles]
  end

end
