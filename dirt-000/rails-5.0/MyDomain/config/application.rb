require_relative 'boot'

require 'rails/all'

require_relative "../lib/constraints"
require_relative "../lib/constraints/domain_constraint"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyDomain
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
  @domains = YAML.load_file("#{Rails.root.to_s}/config/domains.yml")
  def self.domains
    @domains
  end
end
