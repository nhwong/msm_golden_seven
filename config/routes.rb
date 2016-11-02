Rails.application.routes.draw do
  get("/", { :controller => "directors", :action => "index" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "show" })
  get("/edit_director_form/:id", { :controller => "directors", :action => "edit_director_form" })
  get("/delete_director/:id", { :controller => "directors", :action => "delete_director" })
  get("/new_director_form", { :controller => "directors", :action => "new_director_form" })
  get("/create_director", { :controller => "directors", :action => "create_director" })
  get("/edit_director/:id", { :controller => "directors", :action => "edit_director" })

end
