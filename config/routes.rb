Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "director", :action => "all" })
  get("/directors/:director_id", { :controller => "director", :action => "selected" })
  get("/directors/youngest", { :controller => "director", :action => "youngest"})
  get("/directors/oldest", { :controller => "director", :action => "oldest"})

  get("/movies", { :controller => "movie", :action => "all" })
  get("/movies/:movie_id", { :controller => "movie", :action => "selected" })

  get("/actors", { :controller => "actor", :action => "all" })
  get("/actors", { :controller => "actor", :action => "selected" })
end
