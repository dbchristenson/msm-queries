class MovieController < ApplicationController
  def all
    @movies = Movie.all
    render({ :template => "/movie_templates/all" })
  end
  
  def selected
    @movie_id = params.fetch("movie_id")
    @movie = Movie.all.where( {:id => @movie_id} )[0]

    render( {:template => "/movie_templates/selected"})
  end
end
