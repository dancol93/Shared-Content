Rails.application.routes.draw do
  devise_for :users

  namespace :students do
    shallow do
      resources :academic_weeks, only: [:index, :show] do
        resources :academic_days, only: [:index, :show] do
          resources :academic_notes, only: [:index, :show, :create, :update, :delete]
        end
      end
    end
  end

  namespace :mentors do
  end

  namespace :admin do
  end
end
