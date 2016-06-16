require 'childprocess'
require 'timeout'
require 'httparty'
HTTParty::Basement.default_options.update(verify: false)