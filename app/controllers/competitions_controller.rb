class CompetitionsController < ApplicationController
  def index

  end

  def api
    location = params[:location]
    key = ENV["ACTIVE_KEY"]
    url = 'http://api.amp.active.com/search/?v=json&l=' + location + "&r=25&m=meta%3Achannel%3DRunning+meta%3Achannel%3DTriathlon&f=activities&s=relevance&num=25&page=1&api_key=" + key
    data = open(url).read
    render :json => data
  end
end
