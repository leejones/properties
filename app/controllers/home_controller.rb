class HomeController < ApplicationController
  def index
    if current_user
      redirect_to properties_path
    end
  end
end
