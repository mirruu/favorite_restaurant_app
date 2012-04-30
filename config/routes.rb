BestTopTenApp::Application.routes.draw do
  get "/lists", :controller => 'lists', :action => 'index'
  put "/lists", :controller => 'lists', :action => 'create'
  
  get "/lists/new", :controller => 'lists', :action => 'new'
  get "/lists/:id", :controller => 'lists', :action => 'show'
  put "/lists/:id", :controller => 'lists', :action => 'update'
  
  get "/lists/:id/edit", :controller => 'lists', :action => 'edit'
  delete "/lists/:id", :controller => 'lists', :action => 'destroy'
end
