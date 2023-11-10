class NewsController < ApplicationController
  require 'news-api'
  def index
    @data = news_api.get_top_headlines(country: 'us', language: 'en')
  end


  def search
    @data = news_api.get_everything(q: params[:query])
    render :index
  end

  def top_news
    @data = news_api.get_top_headlines(sources: "bbc-news")
    render :index
  end

  private
  def news_api
    @newsapi ||= News.new(ENV.fetch('api_key'))  
  end
end
