Sentiment::Application.routes.draw do
  defaults format: :json do
    resources :documents
    resources :tweets
  end

  root to: redirect('/documents')
end
