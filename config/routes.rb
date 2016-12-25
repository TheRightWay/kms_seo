Kms::Seo::Engine.routes.draw do
  constraints(format: "json") do
    resources :redirects, format: true
  end
end
Rails.application.routes.draw do
  get '/sitemap.xml'  => 'kms/public/sitemaps#show', format: 'xml'
end
