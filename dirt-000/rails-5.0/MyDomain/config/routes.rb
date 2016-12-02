Rails.application.routes.draw do
  
  namespace :access do
    resources :users
  end
  get 'access/valid_unom'

  get 'access/valid_email'

  get 'access/new_user'

  get 'access/cancel_new_user'

  get 'access/register'

  get 'access/user_salt'

  get 'access/login'

  get 'access/logout'

  get 'access/unregister'

  @forced_url = nil
  
  def nav(*only)
    get 'home',      to: 'navigation#home'
    [
      'about','contaact','feedback','faq',
      'popular','recent','news','calendar',
      'index','sitemap','search','links',
      'policy','privacy','copyright',
      'subscribe','join','signup','signin','signout','leave',
      'services','products','portfolio','resources','store','blog','gallery','media',
    ].each do |path|
      get path, to: 'navigation#'+path if only.include? path
    end
    [
      'results',
      'subscribe',
    ].each do |path|
      post path, to: 'navigation#'+path if only.include? path
    end
  end
  
  scope module: 'one_wolf' do
    root 'navigation#home'
    nav 'home','about','join'
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
