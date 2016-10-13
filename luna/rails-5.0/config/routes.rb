Rails.application.routes.draw do

  constraints Constraints::DomainConstraint.new(MyDomain.domains[:dev_domain]) do
    namespace :elles_tree do
      get 'navigation/home'
    end

    namespace :prp do
      get 'navigation/home'
    end

    namespace :one_wolf do
      get 'navigation/home'
    end
  end

  constraints Constraints::DomainConstraint.new(MyDomain.domains[Rails.env]["one_wolf_domain"]) do
    scope module: 'one_wolf' do
      root 'navigation#home'
    end
  end
  
  constraints Constraints::DomainConstraint.new(MyDomain.domains[Rails.env]["prp_domain"]) do
    scope module: 'prp' do
      root 'navigation#home'
    end
  end
  
  constraints Constraints::DomainConstraint.new(MyDomain.domains[Rails.env]["ellestree_domain"]) do
    scope module: 'elles_tree' do
      root 'navigation#home'
    end
  end
  
  root 'navigation#home'
  get 'navigation/home'
  
  namespace :elles_tree do
    get 'navigation/home'
  end

  namespace :prp do
    get 'navigation/home'
  end

  namespace :one_wolf do
    get 'navigation/home'
  end
  
end
