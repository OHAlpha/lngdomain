Rails.application.routes.draw do
  
  namespace :ellestree do
    get 'navigation/home'
  end

  namespace :ellestree do
    get 'navigation/about'
  end

  namespace :ellestree do
    get 'navigation/contact'
  end

  namespace :ellestree do
    get 'navigation/feedback'
  end

  namespace :ellestree do
    get 'navigation/calendar'
  end

  namespace :ellestree do
    get 'navigation/popular'
  end

  namespace :ellestree do
    get 'navigation/recent'
  end

  namespace :ellestree do
    get 'navigation/news'
  end

  namespace :ellestree do
    get 'navigation/faq'
  end

  namespace :ellestree do
    get 'navigation/index'
  end

  namespace :ellestree do
    get 'navigation/sitemap'
  end

  namespace :ellestree do
    get 'navigation/search'
  end

  namespace :ellestree do
    get 'navigation/results'
  end

  namespace :ellestree do
    get 'navigation/links'
  end

  namespace :ellestree do
    get 'navigation/policy'
  end

  namespace :ellestree do
    get 'navigation/privacy'
  end

  namespace :ellestree do
    get 'navigation/copyright'
  end

  namespace :ellestree do
    get 'navigation/subscribe'
  end

  namespace :ellestree do
    get 'navigation/join'
  end

  namespace :ellestree do
    get 'navigation/signup'
  end

  namespace :ellestree do
    get 'navigation/signin'
  end

  namespace :ellestree do
    get 'navigation/signout'
  end

  namespace :ellestree do
    get 'navigation/leave'
  end

  namespace :ellestree do
    get 'navigation/services'
  end

  namespace :ellestree do
    get 'navigation/products'
  end

  namespace :ellestree do
    get 'navigation/portfolio'
  end

  namespace :ellestree do
    get 'navigation/resources'
  end

  namespace :ellestree do
    get 'navigation/store'
  end

  namespace :ellestree do
    get 'navigation/blog'
  end

  namespace :ellestree do
    get 'navigation/gallery'
  end

  namespace :ellestree do
    get 'navigation/media'
  end

  namespace :one_wolf do
    get 'navigation/home'
  end

  namespace :one_wolf do
    get 'navigation/about'
  end

  namespace :one_wolf do
    get 'navigation/contact'
  end

  namespace :one_wolf do
    get 'navigation/feedback'
  end

  namespace :one_wolf do
    get 'navigation/calendar'
  end

  namespace :one_wolf do
    get 'navigation/popular'
  end

  namespace :one_wolf do
    get 'navigation/recent'
  end

  namespace :one_wolf do
    get 'navigation/news'
  end

  namespace :one_wolf do
    get 'navigation/faq'
  end

  namespace :one_wolf do
    get 'navigation/index'
  end

  namespace :one_wolf do
    get 'navigation/sitemap'
  end

  namespace :one_wolf do
    get 'navigation/search'
  end

  namespace :one_wolf do
    get 'navigation/results'
  end

  namespace :one_wolf do
    get 'navigation/links'
  end

  namespace :one_wolf do
    get 'navigation/policy'
  end

  namespace :one_wolf do
    get 'navigation/privacy'
  end

  namespace :one_wolf do
    get 'navigation/copyright'
  end

  namespace :one_wolf do
    get 'navigation/subscribe'
  end

  namespace :one_wolf do
    get 'navigation/join'
  end

  namespace :one_wolf do
    get 'navigation/signup'
  end

  namespace :one_wolf do
    get 'navigation/signin'
  end

  namespace :one_wolf do
    get 'navigation/signout'
  end

  namespace :one_wolf do
    get 'navigation/leave'
  end

  namespace :one_wolf do
    get 'navigation/services'
  end

  namespace :one_wolf do
    get 'navigation/products'
  end

  namespace :one_wolf do
    get 'navigation/portfolio'
  end

  namespace :one_wolf do
    get 'navigation/resources'
  end

  namespace :one_wolf do
    get 'navigation/store'
  end

  namespace :one_wolf do
    get 'navigation/blog'
  end

  namespace :one_wolf do
    get 'navigation/gallery'
  end

  namespace :one_wolf do
    get 'navigation/media'
  end

  get 'navigation/home'

  get 'navigation/about'

  get 'navigation/contact'

  get 'navigation/feedback'

  get 'navigation/calendar'

  get 'navigation/popular'

  get 'navigation/recent'

  get 'navigation/news'

  get 'navigation/faq'

  get 'navigation/index'

  get 'navigation/sitemap'

  get 'navigation/search'

  get 'navigation/results'

  get 'navigation/links'

  get 'navigation/policy'

  get 'navigation/privacy'

  get 'navigation/copyright'

  get 'navigation/subscribe'

  get 'navigation/join'

  get 'navigation/signup'

  get 'navigation/signin'

  get 'navigation/signout'

  get 'navigation/leave'

  get 'navigation/services'

  get 'navigation/products'

  get 'navigation/portfolio'

  get 'navigation/resources'

  get 'navigation/store'

  get 'navigation/blog'

  get 'navigation/gallery'

  get 'navigation/media'

  @forced_url = 'one-wolf.com'
  
  def nav
    get 'home',      to: 'navigation#home'
    get 'about',     to: 'navigation#about'
    get 'contact',   to: 'navigation#contact'
    get 'feedback',  to: 'navigation#feedback'
    get 'calendar',  to: 'navigation#calendar'
    get 'popular',   to: 'navigation#popular'
    get 'recent',    to: 'navigation#recent'
    get 'news',      to: 'navigation#news'
    get 'faq',       to: 'navigation#faq'
    get 'index',     to: 'navigation#index'
    get 'sitemap',   to: 'navigation#sitemap'
    get 'search',    to: 'navigation#search'
    get 'results',   to: 'navigation#results'
    get 'links',     to: 'navigation#links'
    get 'policy',    to: 'navigation#policy'
    get 'privacy',   to: 'navigation#privacy'
    get 'copyright', to: 'navigation#copyright'
    get 'subscribe', to: 'navigation#subscribe'
    get 'services',  to: 'navigation#services'
    get 'products',  to: 'navigation#products'
    get 'portfolio', to: 'navigation#portfolio'
    get 'resources', to: 'navigation#resources'
    get 'store',     to: 'navigation#store'
    get 'blog',      to: 'navigation#blog'
    get 'gallery',   to: 'navigation#gallery'
    get 'media',     to: 'navigation#media'
  end
  
  constraints Constraints::DomainConstraint.new('dev',MyDomain.domains[:dev_domain],@forced_url) do
    namespace :elles_tree do
      nav
    end
    
    namespace :one_wolf do
      nav
    end
  end
  
  constraints Constraints::DomainConstraint.new('one-wolf',MyDomain.domains[Rails.env]["one_wolf_domain"],@forced_url) do
    scope module: 'one_wolf' do
      root 'navigation#home'
      nav
    end
  end
  
  constraints Constraints::DomainConstraint.new('ellestree',MyDomain.domains[Rails.env]["ellestree_domain"],@forced_url) do
    scope module: 'elles_tree' do
      root 'navigation#home'
      nav
    end
  end
  
  root 'navigation#home'
  nav
  
  namespace :one_wolf do
    nav
  end
  
  namespace :ellestree do
    nav
  end
  
end
