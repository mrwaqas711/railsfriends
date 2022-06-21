class HomeController < ApplicationController
  def index
  end

  def about
    @intro_me = "Muhammad Waqas"
    @about_me = "A professional Web Developer who is responsible for the design and construction of websites. Who ensure that sites meet user expectations by ensuring they look good, run smoothly and offer easy access points with no loading issues between pages or error messages."
  end
end
