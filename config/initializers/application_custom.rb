module Consul
  class Application < Rails::Application
    config.i18n.default_locale = :de
    config.i18n.available_locales = ["de"]
    config.i18n.available_locales = ["de", "en", "es", "fr", "gl", "it", "nl", "pt-BR"] if Rails.env.test? || Rails.env.development?
  end
end
