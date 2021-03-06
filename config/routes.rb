Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v0 do
      resources :year_books
      resources :users
      resources :user_roles
      resources :sections
      resources :roles
      resources :quizzes
      resources :quiz_years
      resources :quiz_sections
      resources :quiz_questions
      resources :events
      resources :question_types
      resources :question_categories
      resources :questions
    end

    namespace :v1 do
      get 'questions/', to: 'api#get_questions', as: :get_questions
      get 'sections/', to: 'api#get_sections', as: :get_sections
      get 'books/', to: 'api#get_books', as: :get_books

    end
  end

end
