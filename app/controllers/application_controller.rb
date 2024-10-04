# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  rescue_from Maglev::Errors::NotAuthorized, with: :unauthorized_maglev

  private

  def unauthorized_maglev
    flash[:error] = "You're not authorized to access the Maglev editor!"
    # redirect_to new_user_session_path # use your own url
    redirect_to "/auth/login"
  end
end

