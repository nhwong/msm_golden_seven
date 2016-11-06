Rails.application.routes.draw do
  get("/", { :controller => "directors", :action => "index" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "show" })
  get("/edit_director_form/:id", { :controller => "directors", :action => "edit_director_form" })
  get("/delete_director/:id", { :controller => "directors", :action => "delete_director" })
  get("/new_director_form", { :controller => "directors", :action => "new_director_form" })
  get("/create_director", { :controller => "directors", :action => "create_director" })
  get("/edit_director/:id", { :controller => "directors", :action => "edit_director" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id", { :controller => "movies", :action => "show" })
  get("/edit_movie_form/:id", { :controller => "movies", :action => "edit_movie_form" })
  get("/delete_movie/:id", { :controller => "movies", :action => "delete_movie" })
  get("/new_movie_form", { :controller => "movies", :action => "new_movie_form" })
  get("/create_movie", { :controller => "movies", :action => "create_movie" })
  get("/edit_movie/:id", { :controller => "movies", :action => "edit_movie" })

  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:id", { :controller => "actors", :action => "show" })
  get("/edit_actor_form/:id", { :controller => "actors", :action => "edit_actor_form" })
  get("/delete_actor/:id", { :controller => "actors", :action => "delete_actor" })
  get("/new_actor_form", { :controller => "actors", :action => "new_actor_form" })
  get("/create_actor", { :controller => "actors", :action => "create_actor" })
  get("/edit_actor/:id", { :controller => "actors", :action => "edit_actor" })

end
