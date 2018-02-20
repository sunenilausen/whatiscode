class PagesController < ApplicationController

  def welcome
    @workshop = Workshop.first
  end
end
