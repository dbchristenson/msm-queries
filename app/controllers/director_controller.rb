class DirectorController < ApplicationController
  def all
    @directors = Director.all
    render( {:template => "/director_templates/all"})
  end
  
  def selected
    @
    render( {:template => "/director_templates/selected"})
  end

  def youngest
  end

  def oldest
  end
end
