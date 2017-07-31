class SessionsController < ApplicationController

  helper_method :logged_in?
  def show
  end

  def logged_in?
    false
  end
end
