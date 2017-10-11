class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "Hey Ya'll"
  end

  def about
    @header = "You Think You Know, But You Have No Idea"
  end

  def contest
    @header = "LET'S WIN SOME STUFF"
    flash[:notice] = "Sorry, the contest has ended!"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if
      params[:magic_word] == "merino"
    else
      flash[:alert] = "That is not the correct magic word..."
      redirect_to "/welcome"
    end
  end
end
