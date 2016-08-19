require "bundler/setup"
require "pakyow"

Pakyow::App.define do
  configure do
    Bundler.require :default, Pakyow::Config.env

    if defined?(Dotenv)
      env_path = ".env.#{Pakyow::Config.env}"
      Dotenv.load env_path if File.exist?(env_path)
      Dotenv.load
    end

    app.name = "pakyow-1.0"
    data.adapter = :redis
  end

  configure :development do
    # put development config here
  end

  configure :production do
    # put production config here
  end
end

# asset notes:
#  - ring / pakyow-css are external
#  - scripts will be organized around components
#  - styles will be organized around features / themes
#    - ad-hoc styles can also be defined
