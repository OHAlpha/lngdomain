class OneWolf::NavigationController < ApplicationController
  layout :resolve_layout
  def home
  end

  def about
  end

  def contact
  end

  def feedback
  end

  def calendar
  end

  def popular
  end

  def recent
  end

  def news
  end

  def faq
  end

  def index
  end

  def sitemap
  end

  def search
  end

  def results
  end

  def links
  end

  def policy
  end

  def privacy
  end

  def copyright
  end

  def subscribe
  end

  def join
  end

  def signup
    @user = Access::User.new
  end

  def signin
  end

  def signout
  end

  def leave
  end

  def services
  end

  def products
  end

  def portfolio
  end

  def resources
  end

  def store
  end

  def blog
  end

  def gallery
  end

  def media
  end
  
  private

  def resolve_layout
    case action_name
    when "home"
      "one_wolf_home"
    else
      "one_wolf"
    end
  end
end
