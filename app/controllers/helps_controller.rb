class HelpsController < ApplicationController
  def index
    @resolutions = current_user.resolutions.order('id DESC')
  end
end
