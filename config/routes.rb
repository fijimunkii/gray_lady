GrayLadyApp::Application.routes.draw do

  root to: 'scraper#index'

  post '/scraper/get_links', to: 'scraper#get_links'
  post '/scraper/get_images', to: 'scraper#get_images'

end
