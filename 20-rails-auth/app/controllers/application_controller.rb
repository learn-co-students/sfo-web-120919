class ApplicationController < ActionController::Base
  # helper_method macro allows you to make a method from 
  # any controller and make it available to your views

  # alternatively, you could declare the method in the ApplicationHelper
  # and 'includes ApplicationHelper' in this file.

  helper_method :current_user # make available to views
  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authorized
    # redirect if user isn't logged in 
    redirect_to home_path if !logged_in?
  end

end
