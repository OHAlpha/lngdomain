Rails.application.routes.draw do
  
  scope module: 'access' do
    resource :user, path_names: { edit: 'settings' }
  end
  
=begin
  namespace :access do
    resources :user_queues
  end
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
  
  def play(controller,url=nil)
    #root "#{controller}/home"
    url = controller if url.nil?
    get "#{url}", to: "#{controller}#home"
    ['home','about','gameplay','stats','games','start'].each do |path|
      get "#{url}/#{path}", to: "#{controller}##{path}"
    end
    post "#{url}/starting", to: "#{controller}#starting"
    get "#{url}/play/:game_id", to: "#{controller}#play"
  end
  
  scope module: 'one_wolf' do
    root 'navigation#home'
    nav 'home','about','join', 'welcome', 'signup', 'signin', 'signout', 'leave'
    scope module: 'services' do
      resources :games, only: [:index,:show]
      scope '/play', module: 'game' do
        play 'jeopardy'
        play 'wheel_of_fortune', 'wheel-of-fortune'
      end
    end
  end
  scope '/play/wheel_of_fortune', module: :wof do
    resources :games
  end
  scope '/play/wheel_of_fortune/admin', module: :wof do
    resources :game_moderator_actions
    resources :game_actions
    resources :game_puzzles
    resources :puzzle_words
    resources :category_puzzles
    resources :puzzles
    resources :puzzle_categories
    resources :game_moderators
    resources :game_players
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
