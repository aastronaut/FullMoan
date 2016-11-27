require "application_responder"

class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  self.responder = ApplicationResponder
  respond_to :json

  protect_from_forgery with: :null_session
end
