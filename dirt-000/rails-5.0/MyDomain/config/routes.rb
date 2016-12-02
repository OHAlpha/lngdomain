Rails.application.routes.draw do
  
  scope module: 'access' do
    resource :user, path_names: { edit: 'settings' }
  end
  
  namespace :access do
    resources :user_queues
  end
=begin
  namespace :access do
    resources :user_queues
  end
  namespace :access do
    resources :users
  end
=end
  
  namespace :access do
    post 'valid_unom'
    post 'valid_email'
    post 'new_user'
    post 'cancel_new_user'
    post 'register'
    post 'user_salt'
    post 'login'
    post 'logout'
    post 'unregister'
  end

  @forced_url = nil
  
  def nav(*only)
    get 'home',      to: 'navigation#home'
    [
      'about','contaact','feedback','faq',
      'popular','recent','news','calendar',
      'index','sitemap','search','links',
      'policy','privacy','copyright',
      'subscribe','join', 'welcome','signup','signin','signout','leave',
      'services','products','portfolio','resources','store','blog','gallery','media',
    ].each do |path|
      get path, to: 'navigation#'+path if not only.any? or only.include? path
    end
    [
      'results',
      'subscribe',
    ].each do |path|
      post path, to: 'navigation#'+path if not only.any? or only.include? path
    end
  end
  
  scope module: 'one_wolf' do
    root 'navigation#home'
    nav 'home','about','join', 'welcome', 'signup', 'signin', 'signout', 'leave'
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
