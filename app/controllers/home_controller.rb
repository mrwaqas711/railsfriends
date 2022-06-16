class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "This is Muhammad Waqas"
    @about_ibrahim = "Ibrahim Afzal is Junior Developer"
  end
end
