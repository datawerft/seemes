class SeemesAdmin::BaseController < ActionController::Base

  protect_from_forgery

  include Seemes.config.auth_module.constantize

  before_filter :authenticate



end