class PagesController < ApplicationController

  def welcome
    @header = "Hey Ya'll"
  end

  def about
    @header = "You Think You Know, But You Have No Idea"
  end

  def contest
    @header = "LET'S WIN SOME STUFF"
  end
end
