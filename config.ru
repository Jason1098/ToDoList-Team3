# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Todone::Application


require 'omniauth'
require 'omniauth-google-oauth2'