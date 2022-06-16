class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "This is Muhammad Waqas"
  end
end
