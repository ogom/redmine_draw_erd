RedmineApp::Application.routes.draw do
   match '/draw_erd', to: 'draw_erd#index', via: :get
end
