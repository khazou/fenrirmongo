class HomeController < ApplicationController
  def index
    @news = News.desc(:posted_at).limit(15)
  end

end
