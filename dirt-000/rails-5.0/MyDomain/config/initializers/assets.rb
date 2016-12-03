# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( one_wolf_home.js )
Rails.application.config.assets.precompile += %w( one_wolf_home.css )
Rails.application.config.assets.precompile += %w( one_wolf.js )
Rails.application.config.assets.precompile += %w( one_wolf.css )
Rails.application.config.assets.precompile += %w( one_wolf_games.js )
Rails.application.config.assets.precompile += %w( one_wolf_games.css )
Rails.application.config.assets.precompile += %w( wheel_of_fortune.js )
Rails.application.config.assets.precompile += %w( wheel_of_fortune.css )