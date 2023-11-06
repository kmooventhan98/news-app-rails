class NewsController < ApplicationController
  require 'news-api'
  def index
    @newsapi ||= News.new(ENV.fetch('api_key'))  
    @data = @newsapi.get_top_headlines(country: 'us', language: 'en')

  end
end
