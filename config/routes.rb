Crud2App::Application.routes.draw do

get "lines", :controller => "lines", :action => "index", :as => :train_lines
get "couple", :controller => "lines", :action => "couple", :as => :couple_page
get "lines/new", :controller => "lines", :action => "new", :as => :new_train_line
get "lines/edit/:id", :controller => 'lines', :action => 'edit', :as =>:edit_train_line
post "lines", :controller => "lines", :action => "create" 

get "lines/:id", :controller => "lines", :action => "individual", :as => :individual_train

end
