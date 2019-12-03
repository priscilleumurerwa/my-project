class ApplicationController < ActionController::Base
  before_filter :set_search

  def set_search
  @search=Groom.search(params[:q])
  end
end
