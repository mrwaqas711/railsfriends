class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "This is Muhammad Waqas"
    @answer = 2 + 2
  end
end
