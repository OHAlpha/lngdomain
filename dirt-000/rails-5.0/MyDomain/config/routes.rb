Rails.application.routes.draw do
  
  @forced_url = nil
  
  def nav(only = [])
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
  
  scope module: 'one_wolf' do
    root 'navigation#home'
    nav only: ['home','about']
    get 'games', to: 'games#home'
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
  
end
