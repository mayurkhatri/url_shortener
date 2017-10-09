class UsersController < ApplicationController
  def index
    test = Shortener::ShortenedUrl.generate(params[:user_input])
    sql = "SELECT * FROM shortened_urls order by use_count DESC"
    @results = ActiveRecord::Base.connection.execute(sql)
  end
end