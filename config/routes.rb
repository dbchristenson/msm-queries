Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "director", :action => "all" })
  get("/directors/youngest", { :controller => "director", :action => "youngest"})
  get("/directors/eldest", { :controller => "director", :action => "oldest"})
  get("/directors/:director_id", { :controller => "director", :action => "selected" })
  
  get("/movies", { :controller => "movie", :action => "all" })
  get("/movies/:movie_id", { :controller => "movie", :action => "selected" })

  get("/actors", { :controller => "actor", :action => "all" })
  get("/actors/:actor_id", { :controller => "actor", :action => "selected" })
end
