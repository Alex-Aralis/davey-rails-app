class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include HTTParty

  base_uri "https://bluitxtern.herokuapp.com"  

  def outside_posts
    JSON.parse(self.class.get("/posts.json").body)
  end
end
