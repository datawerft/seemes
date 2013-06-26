Seemes::Engine.routes.draw do
end

Rails.application.routes.draw do

  namespace :seemes_admin, path: Seemes.config.admin_path do
    resources :pages
    resources :snippets
  end

end