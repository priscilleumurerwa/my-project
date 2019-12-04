class ApplicationController < ActionController::Base
   before_action :set_search
  def set_search
  @search=Groom.search(params[:q])
  end
end
