class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
  	if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)
  		session[:locale] = params[:locale]
  	end

  	I18n.locale = session[:locale] || I18n.default_locale
  end
end
