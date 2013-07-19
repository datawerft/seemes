require "seemes/engine"

[ 'seemes/configuration',
  'seemes/view_methods'
].each do |path|
  require File.expand_path(path, File.dirname(__FILE__))
end

module Seemes
  class << self
    def configure
      yield configuration
    end

    # access config attributes
    def configuration
      @configuration ||= Seemes::Configuration.new
    end
    alias :config :configuration
  end
end
