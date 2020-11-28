require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubyTwClub
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.time_zone = 'Taipei'


    config.i18n.load_path += Dir["#{Rails.root}/config/locales/*.yml"]
    config.i18n.load_path += Dir["#{Rails.root}/config/locales/**/*.yml"]

    config.i18n.fallbacks = {
      'zh-TW': %i[zh-TW zh-CN en],
      'zh-CN': %i[zh-CN zh-TW en],
      en: %i[en zh-TW zh-CN]
    }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
