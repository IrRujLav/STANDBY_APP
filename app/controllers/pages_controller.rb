class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = Event.all
  end

  def terms_and_conditions
  end
end
