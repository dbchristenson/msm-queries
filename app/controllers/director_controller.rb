class DirectorController < ApplicationController
  def all
    @directors = Director.all
    render({ :template => "/director_templates/all" })
  end
  
  def selected
    @director_id = params.fetch("director_id")
    @director = Director.all.where( {:id => @director_id} )[0]
    
    render( {:template => "/director_templates/selected"})
  end

  def youngest
  end

  def oldest
  end
end
